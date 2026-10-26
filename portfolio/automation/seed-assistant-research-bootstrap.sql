

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
