# BMC White-Label Architecture Direction

## Product thesis

The BMC service operating system should be sellable later as a branded, single-tenant managed-service appliance for another business.

The near-term goal is not multi-tenant SaaS. It is repeatable deployment.

## What should be reusable

Shared engine:
- structured intake
- lead/service classification
- provider eligibility and matching
- accept/decline and reroute
- contact release
- outcome tracking
- recurring-service follow-up
- research/enrichment queue
- bounded autonomous operator
- outreach engine with safety gates
- payments/revenue events
- private admin/review queues
- n8n integration layer

Tenant configuration:
- company/brand identity
- service catalog
- markets/territories
- domains
- email identity
- Stripe account/products
- provider/buyer pools
- outreach policies
- AI model/provider
- escalation endpoints
- public-site content/theme

## Deployment model

For early white-label sales, provision one isolated stack per customer:
- one Compose project
- one PostgreSQL dataset
- one n8n state volume
- one Cloudflare/public ingress identity
- separate secrets and payment/email credentials

Benefits:
- simpler security boundary
- simple backup/restore
- easier customer offboarding/export
- no cross-tenant data leakage
- easier custom service catalogs
- easier pricing by deployment

## Naming/config foundation

The runtime environment now reserves:
- `COMPOSE_PROJECT_NAME`
- `INSTANCE_KEY`
- `INSTANCE_NAME`
- `DEPLOYMENT_TARGET`
- `PUBLIC_SITE_URL`
- `WEBHOOK_URL`

BMC remains the first tenant. Future refactoring should move any remaining BMC-specific strings from runtime code into tenant configuration before selling a clone.

## Do not build yet

Do not add a multi-tenant control plane, reseller billing, tenant self-service setup, or generic theme builder before BMC has proven:
1. a real provider activation;
2. a real routed lead;
3. a real revenue event;
4. repeatable VPS backup/restore;
5. a clean second-instance deployment.

The second clean deployment is the real white-label proof.
