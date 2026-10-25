-- Initial fixed-price BMC products synced to the dedicated live Stripe account.
insert into products(product_key,service_key,display_name,billing_type,amount_cents,currency,stripe_product_id,stripe_price_id,stripe_payment_link_id,payment_link_url,active)
values
('growth_pack_starter','growth_pack','100-Prospect Local Growth Pack','one_time',49900,'usd','prod_VVALyVr6R1NGuw','price_1UUA0jQU2BLM8GhLhFJt2sDd','plink_1UUYdjQU2BLM8GhLWdq2uB1F','https://buy.stripe.com/cNi00lfxD8pJdBxa5G1oI00',true),
('growth_pack_premium','growth_pack','Premium Local Growth Pack','one_time',74900,'usd','prod_VVALITlv81V4Tp','price_1UUA0pQU2BLM8GhLnyZQPMPu','plink_1UUYdvQU2BLM8GhLe3QUR0Yg','https://buy.stripe.com/6oUdRb3OV49t5515Pq1oI01',true),
('competitor_intelligence_pack','competitor_intel','Local Competitor Intelligence Pack','one_time',29900,'usd','prod_VVALDbksuY3Urv','price_1UUA0rQU2BLM8GhLFCfeeSZ1','plink_1UUYe2QU2BLM8GhL6xBTBVC8','https://buy.stripe.com/eVq5kFbhn21l0OLfq01oI02',true),
('market_expansion_pack','market_expansion','Local Market Expansion Pack','one_time',69900,'usd','prod_VVALUxBVT90wjM','price_1UUA0tQU2BLM8GhLP9LS7wUn','plink_1UUYe6QU2BLM8GhLgTbWoNAJ','https://buy.stripe.com/fZu6oJ99f21lfJF2De1oI03',true)
on conflict(product_key) do update set
  service_key=excluded.service_key,
  display_name=excluded.display_name,
  billing_type=excluded.billing_type,
  amount_cents=excluded.amount_cents,
  currency=excluded.currency,
  stripe_product_id=excluded.stripe_product_id,
  stripe_price_id=excluded.stripe_price_id,
  stripe_payment_link_id=coalesce(excluded.stripe_payment_link_id,products.stripe_payment_link_id),
  payment_link_url=coalesce(excluded.payment_link_url,products.payment_link_url),
  active=excluded.active,
  updated_at=now();
