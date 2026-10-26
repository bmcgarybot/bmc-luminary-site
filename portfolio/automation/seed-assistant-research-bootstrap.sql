

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


-- Assistant-led verified Phoenix batch 05 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Phoenix','hvac_heat','Heating & Air','Chas Roberts Air Conditioning & Plumbing',
 'https://www.chasroberts.com/commercial-ac-heating/','chasroberts.com','Direct Phoenix company site explicitly offers commercial HVAC service for larger commercial buildings; Phoenix office is at 9828 N 19th Ave.','assistant verified research: Phoenix Heating & Air',0,
 null,'602-331-2693',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Phoenix company site explicitly offers commercial HVAC service for larger commercial buildings; Phoenix office is at 9828 N 19th Ave."}'::jsonb
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
 'vendor','Phoenix','backflow_plumbing','Backflow & Commercial Plumbing','Chas Roberts Air Conditioning & Plumbing',
 'https://www.chasroberts.com/plumbing/','chasroberts.com','Direct company site confirms full-service plumbing department with 24-hour service; Phoenix headquarters at 9828 N 19th Ave.','assistant verified research: Phoenix Backflow & Commercial Plumbing',0,
 null,'602-331-2693',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site confirms full-service plumbing department with 24-hour service; Phoenix headquarters at 9828 N 19th Ave."}'::jsonb
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
 'vendor','Phoenix','electrical_service','Electrician','Cannon & Wendt Electric Co Inc.',
 'https://www.cannon-wendt.com/contact/','cannon-wendt.com','Direct company contact page lists Phoenix headquarters at 4020 N 16th St and 24/7 service; company portfolio documents large commercial electrical work.','assistant verified research: Phoenix Electrician',0,
 'info@cannon-wendt.com','602-279-1681',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company contact page lists Phoenix headquarters at 4020 N 16th St and 24/7 service; company portfolio documents large commercial electrical work."}'::jsonb
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
 'vendor','Phoenix','fire_safety','Fire Safety & Extinguisher Service','Cannon & Wendt Electric Co Inc.',
 'https://www.cannon-wendt.com/technologies-low-voltage-systems-and-careers-in-construction/','cannon-wendt.com','Direct company site documents low-voltage fire alarm systems, building automation and related technologies from its Phoenix operation.','assistant verified research: Phoenix Fire Safety & Extinguisher Service',0,
 'info@cannon-wendt.com','602-279-1681',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site documents low-voltage fire alarm systems, building automation and related technologies from its Phoenix operation."}'::jsonb
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
 'vendor','Phoenix','locksmith_access','Locks & Access Control','Southwest Access and Video Corporation',
 'https://www.swaccess.com/','swaccess.com','Direct company site explicitly provides commercial key-card access, alarms, surveillance and integrated security systems for campuses and facilities.','assistant verified research: Phoenix Locks & Access Control',0,
 null,'602-286-0001',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site explicitly provides commercial key-card access, alarms, surveillance and integrated security systems for campuses and facilities."}'::jsonb
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
 'vendor','Phoenix','facility_maintenance','Building Maintenance Help','Progressive Roofing',
 'https://progressiveroofing.us/phoenix/','progressiveroofing.us','Direct Phoenix page lists main office at 23 N 35th Ave and a separate Phoenix service department; commercial roofing and cooperative-contract vendor.','assistant verified research: Phoenix Building Maintenance Help',0,
 null,'602-278-4900',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Phoenix page lists main office at 23 N 35th Ave and a separate Phoenix service department; commercial roofing and cooperative-contract vendor."}'::jsonb
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
 'vendor','Phoenix','landscaping','Landscaping & Yard Cleanup','Gothic Landscape',
 'https://gothiclandscape.com/location/arizona/','gothiclandscape.com','Direct company Arizona locations page lists Phoenix landscape-construction and management branches and explicitly describes commercial landscape capabilities.','assistant verified research: Phoenix Landscaping & Yard Cleanup',0,
 null,'602-470-1711',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company Arizona locations page lists Phoenix landscape-construction and management branches and explicitly describes commercial landscape capabilities."}'::jsonb
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
 'vendor','Phoenix','parking_lot','Parking Lot Cleaning & Striping','Sunland Asphalt & Construction LLC',
 'https://sunlandasphalt.com/phoenix/','sunlandasphalt.com','Direct Phoenix page lists office at 3030 S 7th St and commercial/public asphalt, parking-lot maintenance, sealcoating, milling and paving services.','assistant verified research: Phoenix Parking Lot Cleaning & Striping',0,
 null,'602-323-2800',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Phoenix page lists office at 3030 S 7th St and commercial/public asphalt, parking-lot maintenance, sealcoating, milling and paving services."}'::jsonb
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
 'buyer','Phoenix','medical_centers','hospitals medical centers clinics','Phoenix Children''s Hospital - Thomas Campus',
 'https://phoenixchildrens.org/locations/Phoenix/1919-E-Thomas-Rd','phoenixchildrens.org','Official hospital site lists active Thomas Campus at 1919 E Thomas Rd, Phoenix with 24/7 emergency department and major hospital facilities.','assistant verified research: Phoenix hospitals medical centers clinics',0,
 null,'602-933-1000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official hospital site lists active Thomas Campus at 1919 E Thomas Rd, Phoenix with 24/7 emergency department and major hospital facilities."}'::jsonb
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
 'buyer','Phoenix','medical_centers','hospitals medical centers clinics','Banner - University Medical Center Phoenix',
 'https://www.bannerhealth.com/medicare/-/media/files/project/medicare/medicare-adv/cy26-hmo-materials/directories/april/hmo_provider-directory_cy26-april_bil.pdf','bannerhealth.com','Official Banner Health provider directory lists Banner - University Medical Center Phoenix at 1111 E McDowell Rd.','assistant verified research: Phoenix hospitals medical centers clinics',0,
 null,'602-839-2000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Banner Health provider directory lists Banner - University Medical Center Phoenix at 1111 E McDowell Rd."}'::jsonb
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
 'buyer','Phoenix','warehouses_industrial','warehouses industrial businesses distribution centers','TSMC Arizona',
 'https://ro.careers.tsmc.com/job/Phoenix-Fall-2026-TSMC-Arizona-Engineering-Career-Opportunities-AZ-85001/1366233566/','careers.tsmc.com','Official TSMC site confirms on-site Phoenix Arizona facility at 5088 W Innovation Circle, Phoenix.','assistant verified research: Phoenix warehouses industrial businesses distribution centers',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official TSMC site confirms on-site Phoenix Arizona facility at 5088 W Innovation Circle, Phoenix."}'::jsonb
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
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Arizona Biltmore, LXR Hotels & Resorts',
 'https://www.hilton.com/en/hotels/phxbmol-arizona-biltmore/','hilton.com','Official Hilton property page lists 2400 E Missouri Ave, Phoenix with resort, spa, seven dining outlets, pools, golf, fitness and meeting facilities.','assistant verified research: Phoenix hotels motels lodging',0,
 null,'602-955-6600',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Hilton property page lists 2400 E Missouri Ave, Phoenix with resort, spa, seven dining outlets, pools, golf, fitness and meeting facilities."}'::jsonb
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
 'buyer','Phoenix','hotels_motels','hotels motels lodging','JW Marriott Phoenix Desert Ridge Resort & Spa',
 'https://www.marriott.com/en-us/destinations/united-states/arizona/phoenix/hotels-near-desert-ridge.mi','marriott.com','Official Marriott site confirms active luxury Desert Ridge resort in Phoenix with golf, pools, spa and other large-facility amenities.','assistant verified research: Phoenix hotels motels lodging',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Marriott site confirms active luxury Desert Ridge resort in Phoenix with golf, pools, spa and other large-facility amenities."}'::jsonb
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
 'buyer','Phoenix','public_facilities','government public facilities municipal buildings','Phoenix City Hall',
 'https://www.phoenix.gov/contact-us.html','phoenix.gov','Official City of Phoenix site lists City Hall at 200 W Washington St, Phoenix.','assistant verified research: Phoenix government public facilities municipal buildings',0,
 null,'602-262-3111',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_verified_05","researched_at":"2026-10-27T01:05:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official City of Phoenix site lists City Hall at 200 W Washington St, Phoenix."}'::jsonb
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
),updated_at=now() where p.market='Phoenix';


-- Assistant-led Scottsdale buyer/facility census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Hilton Scottsdale Resort & Villas',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 948-7750',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Talking Stick Resort',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 850-7777',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Aloft Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 253-3700',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','The Scottsdale Resort & Spa',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 991-9000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Senna House Scottsdale - Curio Collection by Hilton',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 946-5500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','SureStay Plus North Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 483-0042',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','SpringHill Suites Phoenix Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 716-1600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Scottsdale Park Suites',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 949-8637',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','The REMI, Autograph Collection',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 770-4415',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Holiday Inn and Suites Scottsdale North - Airpark',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 922-6500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','AC Hotel Scottsdale Old Town',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 422-5601',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Sonesta Select Scottsdale at Mayo Clinic Campus',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 860-4000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Scottsdale Camelback Resort',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 947-3300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Staybridge Suites Scottsdale Talking Stick',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 291-5175',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Caesars Republic Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 903-4747',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Home2 Suites and Tru by Hilton Scottsdale Salt River',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 291-7000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Fairmont Scottsdale Princess',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 585-4848',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Hotel Valley Ho',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 376-2600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Embassy Suites by Hilton Scottsdale Resort',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 949-1414',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','DoubleTree Resort by Hilton Hotel Paradise Valley - Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 947-5400',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','The McCormick Scottsdale',
 'https://business.scottsdalechamber.com/list/QL/lodging-travel-15.htm','business.scottsdalechamber.com','Current Scottsdale Chamber lodging/resort facility with Scottsdale address.','assistant census research: Scottsdale hotels motels lodging',0,
 null,'(480) 948-5050',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber lodging/resort facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Fogo de Chão',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 235-5963',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Din Tai Fung',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(626) 330-8890',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','The Herb Box',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 998-8355',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Nothing Bundt Cakes - North Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 502-8900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Ling & Louie''s Restaurants',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(602) 321-0147',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Sexy Roman',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(602) 609-7002',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Cold Beers & Cheeseburgers on Shea',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 758-4994',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Wildflower Bread Company - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 612-0606',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','MilkShake Factory - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(540) 529-5985',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Rush Bowls Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 207-7613',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Lou Malnati''s Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Chick-fil-A at Raintree Dr. & 101',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'480-922-4540',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Jing Scottsdale Corp',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(602) 699-8888',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Telefèric Barcelona',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(657) 366-4103',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Desert Sky Meat Shop',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 219-2794',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Pinard Wine Bar',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(623) 401-9463',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Élephante',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 576-8168',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Cooper''s Hawk Winery & Restaurant',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(623) 473-9463',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Cold Beers & Cheeseburgers - Old Town',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 941-2747',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Cold Beers & Cheeseburgers - North Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 912-7219',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Handlebar J Restaurant & Saloon',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 948-0110',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Paul Martin''s American Grill',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'480-991-9342',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Rudy''s Country Store & Bar-B-Q',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(602) 613-5105',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Farm & Craft',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 568-8980',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Texas Roadhouse - Via de Ventura',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(602) 338-9016',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Jamie''s Bottle Shop',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 550-8027',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','The Breakfast Joynt',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 443-5324',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Riot House',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 935-5910',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Hand Cut Chophouse',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 947-3763',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Sugar Bowl Ice Cream Parlor & Restaurant',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 946-0051',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Velvet Taco - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(623) 257-4145',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','restaurants','restaurants','Maggiano''s Little Italy - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/restaurants-food-beverages-22','business.scottsdalechamber.com','Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address.','assistant census research: Scottsdale restaurants',0,
 null,'(480) 333-4100',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber restaurant/food-service facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Integrity Pain and Wellness',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 325-9600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','The Doctors of Physical Therapy',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 482-0651',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Audiology of Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 447-9900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Encompass Health Rehabilitation Hospital of Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 551-5400',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Scottsdale Recovery Center, LLC',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(602) 346-9142',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','BelleSante by Kristine Romine, MD',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 878-0087',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','The Meadows Outpatient Center',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 231-0260',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Vita Sana Medical Center',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 579-5290',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','NextCare Urgent Care - Scottsdale Road',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(888) 381-4858',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Aspendale Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 397-1421',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','GlobalMed',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 922-0044',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Thermosurgery Technologies, Inc.',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 330-5840',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Hobgood Facial Plastic Surgery',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 214-9955',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Joliet Aesthetics MedSpa',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 896-3754',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Castle Biosciences, Inc.',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'866-788-9007',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','AZIV Medics',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(623) 521-5034',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Allergy, Asthma & Immunology Associates Ltd.',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 949-7377',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Clearwater Senior Living at Pinnacle Peak',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'480-485-4000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Eargo Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(615) 804-9238',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Elevate Health and Aesthetics',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 300-6344',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Complete Wellness Chiropractic',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale Chamber health-care/medical facility with Scottsdale address.','assistant census research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 520-7000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber health-care/medical facility with Scottsdale address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','dental','dentists dental offices orthodontists','Southtown Dental Care - Matthew E. Nelson, DDS',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale dental practice.','assistant census research: Scottsdale dentists dental offices orthodontists',0,
 null,'(480) 947-3004',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','dental','dentists dental offices orthodontists','Marbella Dental Studio',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale dental practice.','assistant census research: Scottsdale dentists dental offices orthodontists',0,
 null,'(602) 996-1660',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','dental','dentists dental offices orthodontists','Douglas Family Dentistry',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale dental practice.','assistant census research: Scottsdale dentists dental offices orthodontists',0,
 null,'(480) 948-3680',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','dental','dentists dental offices orthodontists','Arcadia Pediatric Dental',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale dental practice.','assistant census research: Scottsdale dentists dental offices orthodontists',0,
 null,'(480) 207-5070',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','therapy_behavioral','therapy counseling behavioral health clinics','Scottsdale Recovery Center, LLC',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale behavioral-health/therapy facility.','assistant census research: Scottsdale therapy counseling behavioral health clinics',0,
 null,'(602) 346-9142',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale behavioral-health/therapy facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','therapy_behavioral','therapy counseling behavioral health clinics','The Meadows Outpatient Center',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale behavioral-health/therapy facility.','assistant census research: Scottsdale therapy counseling behavioral health clinics',0,
 null,'(480) 231-0260',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale behavioral-health/therapy facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','therapy_behavioral','therapy counseling behavioral health clinics','Be Well Therapy Collective',
 'https://business.scottsdalechamber.com/list/ql/health-care-11','business.scottsdalechamber.com','Current Scottsdale behavioral-health/therapy facility.','assistant census research: Scottsdale therapy counseling behavioral health clinics',0,
 null,'(267) 225-3549',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale behavioral-health/therapy facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Aspendale Scottsdale',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 397-1421',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Revel Scottsdale',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 608-2808',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Pueblo Norte Senior Living',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 948-3990',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Andara Senior Living',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 451-1800',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','New Visions Assisted Living LLC',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 764-3616',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Mosaic Gardens at Scottsdale',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 901-0695',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Revel McDowell Mountain',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 573-0335',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Acoya Scottsdale at Troon',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 699-1444',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','senior_daycare','senior living assisted living daycare childcare','Westminster Village',
 'https://business.scottsdalechamber.com/list/category/retirement-communities-1304','business.scottsdalechamber.com','Current Scottsdale Chamber senior-living/retirement facility.','assistant census research: Scottsdale senior living assisted living daycare childcare',0,
 null,'(480) 451-2000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber senior-living/retirement facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Abdo',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 864-5579',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Academy Bank - North Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 291-0622',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Alerus',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 905-2400',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Arouet Capital',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 795-7950',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Bankers Trust North Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 417-4907',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Beacon Pointe Advisors',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 428-5528',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','BOK Financial Mortgage - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 459-2838',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Buckman Insurance Group',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,'(480) 900-6486',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Core 4 Wealth Management of Raymond James',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','First Fidelity Bank - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','FirstBank - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Southwest Heritage Bank - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Stearns Bank - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Vanguard - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Nationwide - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','CIGNA Healthcare of Arizona - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Wells Fargo Advisors - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Desert Financial Credit Union - Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Howard Wealth Advisors',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','insurance_professional','insurance agents professional offices','Suzi Glover - State Farm Insurance',
 'https://business.scottsdalechamber.com/list/ql/finance-insurance-10?o=alpha','business.scottsdalechamber.com','Current Scottsdale finance/insurance/professional office.','assistant census research: Scottsdale insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Grayhawk Development',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 998-2661',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','DMB Associates, Inc.',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 367-7000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','LevRose CML Real Estate/TCN Worldwide',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 947-0600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','AZ Luxe Listings',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 686-0193',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Global Mobility Solutions',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 922-0700',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Frieder Group',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(602) 885-2566',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Selling Sonoran Group at Compass',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(702) 686-4252',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','U-Haul Moving & Storage of Pinnacle Peak',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 360-4830',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Whitestone REIT',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 937-1900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Desert Sky Properties Inc.',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 991-2268',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Modera Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(602) 669-2883',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','Overture North Scottsdale',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 682-5555',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','property_management','property management companies apartment communities','The Monroe',
 'https://business.scottsdalechamber.com/list/ql/real-estate-moving-storage-20','business.scottsdalechamber.com','Current Scottsdale real-estate/property/apartment facility.','assistant census research: Scottsdale property management companies apartment communities',0,
 null,'(480) 805-4400',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale real-estate/property/apartment facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','ASM',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies ASM as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / semiconductor).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies ASM as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / semiconductor)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Axon',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Axon as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / technology manufacturing).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Axon as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / technology manufacturing)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Choice Hotels International',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Choice Hotels International as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / hospitality).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Choice Hotels International as part of a primary industry/employment cluster in Scottsdale (Corporate headquarters / hospitality)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Vanguard',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Vanguard as part of a primary industry/employment cluster in Scottsdale (Finance headquarters).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Vanguard as part of a primary industry/employment cluster in Scottsdale (Finance headquarters)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Nationwide',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Nationwide as part of a primary industry/employment cluster in Scottsdale (Insurance headquarters).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Nationwide as part of a primary industry/employment cluster in Scottsdale (Insurance headquarters)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','CVS/Aetna',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies CVS/Aetna as part of a primary industry/employment cluster in Scottsdale (Health/insurance operations).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies CVS/Aetna as part of a primary industry/employment cluster in Scottsdale (Health/insurance operations)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','HonorHealth',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies HonorHealth as part of a primary industry/employment cluster in Scottsdale (Healthcare system).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies HonorHealth as part of a primary industry/employment cluster in Scottsdale (Healthcare system)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Mayo Clinic',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Mayo Clinic as part of a primary industry/employment cluster in Scottsdale (Healthcare system).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Mayo Clinic as part of a primary industry/employment cluster in Scottsdale (Healthcare system)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','LifeStance Health',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies LifeStance Health as part of a primary industry/employment cluster in Scottsdale (Healthcare services).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies LifeStance Health as part of a primary industry/employment cluster in Scottsdale (Healthcare services)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Anuncia',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Anuncia as part of a primary industry/employment cluster in Scottsdale (Medical technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Anuncia as part of a primary industry/employment cluster in Scottsdale (Medical technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Blue Yonder',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Blue Yonder as part of a primary industry/employment cluster in Scottsdale (Software/technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Blue Yonder as part of a primary industry/employment cluster in Scottsdale (Software/technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Acronis',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Acronis as part of a primary industry/employment cluster in Scottsdale (Software/technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Acronis as part of a primary industry/employment cluster in Scottsdale (Software/technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Mindbody',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Mindbody as part of a primary industry/employment cluster in Scottsdale (Software/technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Mindbody as part of a primary industry/employment cluster in Scottsdale (Software/technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Ring',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Ring as part of a primary industry/employment cluster in Scottsdale (Technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Ring as part of a primary industry/employment cluster in Scottsdale (Technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Zocdoc',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Zocdoc as part of a primary industry/employment cluster in Scottsdale (Technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Zocdoc as part of a primary industry/employment cluster in Scottsdale (Technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Parchment',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Parchment as part of a primary industry/employment cluster in Scottsdale (Education technology).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Parchment as part of a primary industry/employment cluster in Scottsdale (Education technology)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Allen Lund Company',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Allen Lund Company as part of a primary industry/employment cluster in Scottsdale (Logistics management).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Allen Lund Company as part of a primary industry/employment cluster in Scottsdale (Logistics management)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Traffic Tech',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies Traffic Tech as part of a primary industry/employment cluster in Scottsdale (Logistics management).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies Traffic Tech as part of a primary industry/employment cluster in Scottsdale (Logistics management)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','APL Logistics',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies APL Logistics as part of a primary industry/employment cluster in Scottsdale (Logistics management).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies APL Logistics as part of a primary industry/employment cluster in Scottsdale (Logistics management)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','BlueGrace Logistics',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies BlueGrace Logistics as part of a primary industry/employment cluster in Scottsdale (Logistics management).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies BlueGrace Logistics as part of a primary industry/employment cluster in Scottsdale (Logistics management)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','StandardAero',
 'https://www.choosescottsdale.com/economic-ecosystem/primary-industries','choosescottsdale.com','Scottsdale Economic Development identifies StandardAero as part of a primary industry/employment cluster in Scottsdale (Aviation/industrial).','assistant census research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Scottsdale Economic Development identifies StandardAero as part of a primary industry/employment cluster in Scottsdale (Aviation/industrial)."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','City of Scottsdale',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Civic Center',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Airport',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Public Library - Civic Center',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Public Library - Appaloosa',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Public Library - Arabian',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Public Library - Mustang',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Police Department Headquarters',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Fire Department Headquarters',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Community College',
 'https://www.scottsdaleaz.gov/','scottsdaleaz.gov','Current Scottsdale public/civic/education facility or facility operator.','assistant census research: Scottsdale government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale public/civic/education facility or facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','schools','schools charter schools private schools','Scottsdale Unified School District #48',
 'https://www.susd.org/','susd.org','Current public school district and multi-campus facility operator in Scottsdale.','assistant census research: Scottsdale schools charter schools private schools',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current public school district and multi-campus facility operator in Scottsdale."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Scottsdale','schools','schools charter schools private schools','Arizona State University - SkySong Innovation Center',
 'https://www.choosescottsdale.com/economic-ecosystem/employment-centers','choosescottsdale.com','Current 1.2-million-square-foot mixed-use ASU/innovation employment campus in Scottsdale.','assistant census research: Scottsdale schools charter schools private schools',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_buyers_01","researched_at":"2026-10-27T01:26:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 1.2-million-square-foot mixed-use ASU/innovation employment campus in Scottsdale."}'::jsonb
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
),updated_at=now() where p.market='Scottsdale';


-- Assistant-led Scottsdale vendor batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Unique Electrical Contractors, Inc.',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Electrician.','assistant vendor census: Scottsdale Electrician',0,
 null,'(480) 840-1050',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Dominick Plumbing',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Backflow & Commercial Plumbing.','assistant vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,'(480) 779-7350',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','window_cleaning','Window Cleaning','Magna View Window Solutions',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Window Cleaning.','assistant vendor census: Scottsdale Window Cleaning',0,
 null,'(480) 232-0737',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Window Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Lindberg Fine Homes, Inc.',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 374-4962',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Abeer Interiors',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 848-9791',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Toscani Interior Services LLC',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 885-8500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','window_cleaning','Window Cleaning','Pella Windows & Doors',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Window Cleaning.','assistant vendor census: Scottsdale Window Cleaning',0,
 null,'(480) 504-1776',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Window Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','NVIRIQ Inc',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 999-6091',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Bee Organized Scottsdale',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 840-7067',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Mister Sparky Electrician Scottsdale',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Electrician.','assistant vendor census: Scottsdale Electrician',0,
 null,'(480) 591-0888',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Kitchens by Good Guys',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 696-3524',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','ArDan Construction',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 608-4944',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','TraVek Remodeling & Roofing',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(623) 274-2914',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','McDowell Mountain Builders',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 845-9621',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Constructed Matter',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 628-4458',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','window_cleaning','Window Cleaning','Gatsby Glass of Scottsdale',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Window Cleaning.','assistant vendor census: Scottsdale Window Cleaning',0,
 null,'(480) 780-1000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Window Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','ModaScapes Interior Design',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 422-1855',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Four Peaks Building Group',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 440-8772',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Camelot Homes',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(602) 885-6673',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Suzanne Rugg Interior Design, LLC',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 768-7142',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Pro-Tech Products',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 945-7303',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Zest Plumbing & Drain',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Backflow & Commercial Plumbing.','assistant vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,'(480) 618-1750',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','CEMEX',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(602) 416-2600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Contract Furnishings Mart',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 805-9960',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Infinity Builders - Scottsdale Remodeling & Construction',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 757-0767',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Hunt''s Kitchen & Design',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(480) 650-4402',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Ames Construction Inc.',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(602) 431-2111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Paragon Contracting, LLC',
 'https://business.scottsdalechamber.com/members/ql/construction-equipment-contractors-7','business.scottsdalechamber.com','Current Scottsdale Chamber construction/service listing for Building Maintenance Help.','assistant vendor census: Scottsdale Building Maintenance Help',0,
 null,'(928) 414-7353',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendor_batch_01","researched_at":"2026-10-26T23:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Scottsdale Chamber construction/service listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
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
where p.market='Scottsdale';
