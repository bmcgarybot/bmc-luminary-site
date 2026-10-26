

-- Assistant-led Phoenix industrial/public census batch 03 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Amsafe Inc.',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 850-2850',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','GEMTEK Products, LLC',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 265-8586',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Hayward Industries Inc.',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Honeywell International - Sky Harbor',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 365-1300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Intrepid Coatings, Inc.',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 243-3293',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Polyglass USA',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(863) 514-3755',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Procter & Gamble Phoenix Plant',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 269-2171',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','TSMC Arizona Corporation',
 'https://business.phoenixchamber.com/list/category/manufacturing-116','business.phoenixchamber.com','Current Greater Phoenix Chamber manufacturing facility with Phoenix address.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 567-7000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber manufacturing facility with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Bay Logistics Inc.',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(616) 432-5499',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Bus.com Phoenix',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'1-855-426-1717',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','CMS Companies',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 233-9633',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Divine Charter',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 932-8850',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','GOGO Charters Phoenix',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(480) 776-0065',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Transdev / First Transit - Phoenix',
 'https://business.phoenixchamber.com/list/category/transportation-10163?d=1&o=alpha','business.phoenixchamber.com','Current Phoenix transportation/logistics operator or facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(480) 456-5600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix transportation/logistics operator or facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','ACE Relocation Systems',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 269-3534',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Beltmann Group - North American Van Lines',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 484-7665',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','CMS Companies - Moving/Logistics',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 233-9633',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Dircks Moving & Logistics',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 267-9401',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Elontec, LLC - Phoenix',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 759-5500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Let''s Get Moving Phoenix',
 'https://business.phoenixchamber.com/list/category/moving-and-relocation-services-1046','business.phoenixchamber.com','Current Phoenix moving/logistics/warehouse services facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 806-7272',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix moving/logistics/warehouse services facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Penske Used Truck Center - Phoenix',
 'https://business.phoenixchamber.com/list/category/freight-transportation-118','business.phoenixchamber.com','Current Phoenix commercial truck/freight facility.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 282-1705',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix commercial truck/freight facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Amazon - W Mohave St Facility',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Phoenix Amazon facility at 4750 W Mohave St; retail/distribution operation.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 353-5961',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix Amazon facility at 4750 W Mohave St; retail/distribution operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Cintas Corporation - W Roosevelt St',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Phoenix Cintas facility at 4804 W Roosevelt St.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(480) 528-5329',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix Cintas facility at 4804 W Roosevelt St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','Goodwill Retail Operations Center',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Phoenix Goodwill operations facility at 515 N 51st Ave.','assistant census research: Phoenix warehouses industrial businesses distribution centers',0,
 null,'(602) 322-7058',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix Goodwill operations facility at 515 N 51st Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','ADOT DBE Supportive Services',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 712-7761',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','ADOT Office of Law and Policy',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 712-8025',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Arizona Commerce Authority',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 845-1200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Arizona Mexico Commission',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 542-1370',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Arizona Office of Tourism',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 364-3700',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','ARIZONA@WORK - Phoenix/State Office',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 542-6013',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','City of Phoenix - City Hall',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 262-6011',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','City of Phoenix - City Manager''s Office',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 262-6941',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','City of Phoenix - Community & Economic Development',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 261-8709',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Maricopa Association of Governments',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 254-6300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Maricopa County Administration',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 372-1524',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Maricopa County Small and Local Business Advocacy Program',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 506-2249',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Maricopa County Workforce Development Board',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 506-0153',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','U.S. Small Business Administration - Phoenix',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 745-7200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Valley Metro - Phoenix Headquarters',
 'https://business.phoenixchamber.com/list/category/government-offices-and-programs-10068','business.phoenixchamber.com','Current government/public-program office or public facility in Phoenix.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,'(602) 262-7433',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current government/public-program office or public facility in Phoenix."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Sky Harbor International Airport',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Deer Valley Airport',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Goodyear Airport',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Burton Barr Central Library',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Acacia',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Agave',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Century',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Cesar Chavez',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Cholla',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Desert Broom',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Desert Sage',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Harmon',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Ironwood',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Juniper',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Mesquite',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Ocotillo',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Palo Verde',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Saguaro',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - South Mountain',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Public Library - Yucca',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Parks and Recreation Department',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Convention Center',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Municipal Court',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Police Department Headquarters',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix Fire Department Headquarters',
 'https://www.phoenix.gov/','phoenix.gov','Current City of Phoenix public/government facility or facility operator.','assistant census research: Phoenix government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Phoenix public/government facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','State of Arizona - Phoenix Facilities',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies State of Arizona - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies State of Arizona - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Banner Health - Phoenix Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Banner Health among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Banner Health among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Amazon - Phoenix Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Amazon among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Amazon among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Walmart - Phoenix Facilities',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Walmart - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Walmart - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Maricopa County - Phoenix Facilities',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Maricopa County - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Maricopa County - Phoenix Facilities among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Fry''s Food Stores - Phoenix Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Fry''s Food Stores among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Fry''s Food Stores among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Wells Fargo - Phoenix Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Wells Fargo among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Wells Fargo among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','Arizona State University - Downtown Phoenix Campus',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies Arizona State University - Downtown Phoenix Campus among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies Arizona State University - Downtown Phoenix Campus among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','City of Phoenix - Municipal Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies City of Phoenix - Municipal Operations among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies City of Phoenix - Municipal Operations among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','general_business','other local businesses','US Postal Service - Phoenix Operations',
 'https://www.phoenix.gov/content/dam/phoenix/financesite/documents/2025PHXACFRFinalOnlineRS.pdf','phoenix.gov','City financial report identifies US Postal Service among major Phoenix-area employers; facility-level follow-up should split individual sites.','assistant census research: Phoenix other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_industrial_public_03","researched_at":"2026-10-27T02:39:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City financial report identifies US Postal Service among major Phoenix-area employers; facility-level follow-up should split individual sites."}'::jsonb
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
),updated_at=now() where p.market='Phoenix';


-- Assistant-led Phoenix licensed vendor/trade census batch 04 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Accent Plumbing Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Qualtire Plumbing & Construction Acc',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','A 1 Plumbing Contractors Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','A J Birdwell Plumbing',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Klyn Pool Plumbing Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Marlin Mechanical Corporation',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Shiya Strephans Contracting Co',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','W D Manor Mechanical Contractors Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Donley Service Center, Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Tek Star Plumbing And Mechanical',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','1st Choice Mechanical LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','1st Discount Cooling & Heating',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','2020 Builders LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','3 Nails Contracting Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','480 Restoration LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','A - Z Services General Contracting LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','A A A Green Plumbing & Solar Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Baca''s Plumbing LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Baja Mechanical LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Bell Road Plumbing And Spas',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Bfp Tradesman LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Big Desert Plumbing, LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Big G Plumbing LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Bird Dog Plumbing LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Blue Plumbing LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Bobcat Plumbing Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Brandon Gregg Plumbing',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Brewer Enterprises LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Brisas Plumbing Inc.',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Brothers For Life Plumbing',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','C L W Plumbing',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','C N J Services LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Camelback Plumbing LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Canilu Air LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Canyon Plumbing Solutions LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Canyon Ranch Plumbing Company LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Canyon State Propane, LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Central Mechanical Services LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Central Service Group LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Channel Plumbing Contractor LLC',
 'https://homversa.com/az/phoenix/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Copper King Electric Co Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Cannon & Wendt Electric Co Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Springs & Sons Electrical Contractors LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Total Electric',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Benjamin Electric',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Barone Electrical Service',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Echo Canyon Electric, Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Hagarty Electric Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','10 Gauge Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','1twenty Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','2 Sparks Electric Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','2000 Gold LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','24hr Valleywide Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','360 Property Preservation LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','3d Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','4:13 Electrical LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','480 Restoration LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','4d8 Electric, Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','4js Electric Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','4uelectric',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','A And M Electric Services, Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arizona Currents Electric, LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arizona Elite Electrical Contractors LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arizona Premier Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arizona Sun Electrical Contractors Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Armature Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Armstrong Service Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arthur Electric',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arti Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Arvizu Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Aspect Electrical Services LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Atd Developers Enterprise & Consulting Inc.',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Ateam Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Atlas Group Services LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Atm Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Atom Electrical Services LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az - Jc Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az Elcon Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az Electric Works LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az Electrical & Solar Services LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az Itechnology LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','electrical_service','Electrician','Az Legacy Electric LLC',
 'https://homversa.com/az/phoenix/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Chas Roberts Air Conditioning Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Dial One Mears Air Conditioning And Heating',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','A 1 Air Conditioning Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Gonzales Heating And Cooling Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Donley Service Center, Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','One Way Heating And Air Conditioning',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Air Conditioning By Jay LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Central Supply And Metal Co',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','1st Choice Mechanical LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','1st Discount Cooling & Heating',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','360 Air LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','4 Seasons Hvac LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','4 Way Heating And Cooling LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','48buyac.com',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','4him Cooling & Heating Co',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','78 Degrees Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','A 1 Cooling & Heating, LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','A A A American Air And Appliance LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','A And M Air Conditioning And Heating Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Airfix Solutions Ac & Heating LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Airflow Climate Control LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Airite Mechanical',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Airlemental Mechanical LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Airvic Heating & Cooling',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alaa Air And Comfort LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alammo Heating Cooling LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alfredo''s A C LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alien Air Conditioning And Heating LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All American Heating & Cooling LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All Area A/C & Heating Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All Day Air LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All Properties Services',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All Star Refrigeration LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','All Temperature Service Air Conditioning, Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alliance Plumbing Service And Repair',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Allied Mechanical Services LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alpha Mechanical LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alpine Air Heating And Cooling LLC',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alpine Mechanical And Service Inc.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Alva Mechanical L.l.c.',
 'https://homversa.com/az/phoenix/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Custom Roofing Co Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','C And C Roofing And Supply Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Scott Roofing Company',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Jormic Roofing',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Progressive Roofing',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Myers Mobile Insulated Roofs',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Headlee Roofing Co Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Catalina Roofing And Supply,inc',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Roof Care Center Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Hays Roofing Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','A Foremost Roofing Co LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','A Nail In Time Construction LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','A+ Finish Roofing LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Aaron''s Roofing LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Above & Beyond Exteriors LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Act Roofing LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Acuna Roofing L.l.c.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adam Solar Services LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adobe Energy Management Company',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Affirmax Roofing Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Aleman Roofing LLC',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Allstate Roofing Inc.',
 'https://homversa.com/az/phoenix/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Mc Keown Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Bim''s Lawn & Landscaping Service Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','E L S Construction Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','William T Jenkins Lawn Sprinkling Systems',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Coy Landscaping And Maintenance Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Lewiston Irrigation And Landscape',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','A M E Landscape Companies Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','A A A Landscape',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Fleming Sprinkler Landscape',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Gothic Landscape Construction Division',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','3 B''s Landscaping, LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','4 M''s Landscaping LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','5-O Turf Putting Greens & Pavers LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','A B C Scapes Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','A Synthetic Grass LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','A To Tree Landscape LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Acl Outdoor Services LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Acuario Landscaping And Maintenance, LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Adema Design Group, LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Agape Scape LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Agave Environmental Contracting Inc.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Alberto''s Tree Service & Yard Work LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','All Terrain Landscaping LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','All Year Round LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Aloha Irrigation LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Alpha Scenery LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Am Irrigation And Landscape, L.l.c.',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Ameriscapes Landscaping LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Arcadia Turf',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Arizo Scapes LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Arizona Artificial Lawns LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Arizona Brick Pavers LLC',
 'https://homversa.com/az/phoenix/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Unique Security Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Gruber Industries Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Southwest Access And Video Corporation',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Fire Security Electronics & Communications Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Multicom Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Satellite Management Services Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Oneaz Alarm, Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Arcom Security Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Cqr Technologies Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Absolutely Electronic Communications',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','1st Stop Security L.l.c.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','A & A Communications, LLC',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Accel Communications Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Active Burglar Alarm Co',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Adobe Home Systems',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Advanced Interior Electronics Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Aero Automatic Sprinkler Company',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Alarm911 Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Alarms Az',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','All Safe-Lock-Doors-Camera''s-LLC',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','locksmith_access','Locks & Access Control','All Telecom Technologies Inc.',
 'https://homversa.com/az/phoenix/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Black And Gray Construction Co',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Sunland Asphalt & Construction LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','American Asphalt Paving And Sealcoating Inc.',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','L + L Asphalt LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','United Paving And Sealcoat LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Viasun Corporation',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Straight Striping LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Circle V Contracting LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Southwest Barricades LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Ez Paving And Seal Coating LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','A & S Contracting, LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Arizona Improvements LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Arizona Pavement Specialist LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Arizona Street Works LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Asphalt Restoration Services Inc.',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Az Coat Asphalt & Contracting LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Desert Canvas Construction LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Ecosurface',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Element Asphalt LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Grand Canyon State Paving LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Infinity Paving LLC',
 'https://homversa.com/az/phoenix/paving-contractors','homversa.com','Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Parking Lot Cleaning & Striping',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed parking lot cleaning & striping listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Kimbrells In Business LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','A-Z Septic Pumping LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Precision Underground Utilities LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Custom Plumbing Of Arizona LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Pars Services LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Arizona Sewer & Septic',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Nighthawk Development, LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Gravity Plumbing LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','A-American Septic',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Empire Septic Technologies LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Advanced Environmental Systems LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Ebmr Holdings LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Genie Construction LLC',
 'https://homversa.com/az/phoenix/septic-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Beeman Brothers Drilling Inc.',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Empire Pump Corporation',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Yellow Jacket Drilling Services LLC',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Shumway Exploration LLC',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Precision Electric Co Inc.',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','rural_property','Septic, Grading & Wells','Skytech Investment Drilling Inc.',
 'https://homversa.com/az/phoenix/well-drilling-contractors','homversa.com','Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Septic, Grading & Wells',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed septic, grading & wells listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Ralph Wilkens Company Inc.',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Robert N Ewing General Contractor Inc.',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Arok Construction Co',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','K M Development Corp',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Furcini Construction Corporation',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Titan Builders Incorporated',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Bakke Custom Carpentry',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Toro Construction Inc.',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Kirk Development Company',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Kowalski Electrical',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','138 Fortunate LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','180 Degrees Design Build, LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','1912 Build Co',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','1975 Construction LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','1k Construction & Finishing LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','1st American Builders LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','1st Choice Mechanical LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','20 Floor 7 LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','20/Twenty Contracting Services LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','2000 Gold LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','2020 Builders LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','3 A''s Construction LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adam Bailey Construction Consulting, PLLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adams Custom Built General Contracting LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adawg Investments LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Additional Option LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adl Arizona Design Limited',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adobe Energy Management Company',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Adroit General Contracting',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Advanced Builder Solutions LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Advanced Development Resources LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Advanced Intergrated Sustainability Solutions',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Advantage Builders LLC',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Advantage Floor Covering Inc.',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Aes',
 'https://homversa.com/az/phoenix/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion.','assistant licensed vendor census: Phoenix Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_vendors_04","researched_at":"2026-10-27T00:55:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Phoenix; license evidence current in the cited directory, direct-site/service-scope verification still required before promotion."}'::jsonb
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
),updated_at=now() where p.market='Phoenix';
