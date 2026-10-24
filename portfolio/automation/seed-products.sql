-- Initial fixed-price BMC products. Stripe IDs/links are populated after Stripe is connected.
insert into products(product_key,service_key,display_name,billing_type,amount_cents,currency,active)
values
('growth_pack_starter','growth_pack','100-Prospect Local Growth Pack','one_time',49900,'usd',true),
('growth_pack_premium','growth_pack','Premium Local Growth Pack','one_time',74900,'usd',true),
('competitor_intelligence_pack','competitor_intel','Local Competitor Intelligence Pack','one_time',29900,'usd',true),
('market_expansion_pack','market_expansion','Local Market Expansion Pack','one_time',69900,'usd',true)
on conflict(product_key) do update set
  service_key=excluded.service_key,
  display_name=excluded.display_name,
  billing_type=excluded.billing_type,
  amount_cents=excluded.amount_cents,
  currency=excluded.currency,
  active=excluded.active;
