# BMC Cloud VPS Deployment

Updated: 2026-10-24

## Production target

BMC production is now designed for a small always-on Linux VPS rather than a home appliance.

Recommended initial class:
- Ubuntu 24.04 LTS x86_64
- 4 vCPU
- 8 GB RAM
- 75+ GB NVMe
- public IPv4/IPv6
- provider-level snapshot/backup capability
- monthly billing until revenue proves the deployment

The current commercial target is the OVHcloud VPS-2 class, but the stack is provider-neutral and can be moved to another Ubuntu VPS without application changes.

## Runtime topology

Public traffic:
- Cloudflare DNS / public site
- Cloudflare Tunnel
- localhost-only nginx webhook proxy
- BMC Ops API

Private services:
- PostgreSQL
- n8n
- BMC scheduler/operator
- SearXNG research search
- optional Ollama utility model

All application ports in Docker bind to 127.0.0.1. Do not expose Postgres, n8n, SearXNG, Ollama, or the admin/API directly to the public Internet.

Only SSH should need a public inbound server port. Cloudflare Tunnel creates outbound connectivity to Cloudflare for the public webhook hostname.

## Resource budget for an 8 GB VPS

The Compose file now places memory ceilings on long-running services so one process cannot consume the whole host.

Approximate ceilings:
- PostgreSQL: 1 GB
- Ops API: 768 MB
- n8n: 1.5 GB
- SearXNG: 768 MB
- scheduler: 128 MB
- nginx: 128 MB
- Cloudflare Tunnel: 128 MB
- optional Ollama: 2.5 GB

The normal core does not require Ollama. Start the AI profile only after the deterministic runtime is healthy.

For the 8 GB class, start with `qwen3:1.7b`. A 4B model can be tested later only after observing real memory headroom. The LLM is an assistant for classification/summarization; it is not in the critical path for ordinary intake, routing, provider responses, payments, or templated messages.

## First deployment

On a fresh Ubuntu 24.04 VPS:

```bash
git clone https://github.com/bmcgarybot/bmc-luminary-site.git
cd bmc-luminary-site/portfolio/automation
chmod +x provision-cloud.sh bootstrap.sh start.sh stop.sh backup.sh runtime-doctor.sh
./provision-cloud.sh
```

Log out and back in if the provisioning script added your account to the Docker group.

Then:

```bash
cd bmc-luminary-site/portfolio/automation
./bootstrap.sh
```

Bootstrap creates local secrets when `.env` does not exist, starts the private core, reapplies safe schema/seeds, and runs the runtime doctor.

## Host security

Before launch:
- use SSH keys;
- disable password SSH after key access is verified;
- keep the OS patched;
- do not expose Docker application ports publicly;
- do not publish the private admin interface;
- keep global outreach switches OFF during setup;
- use unique generated secrets;
- do not store production secrets in Git.

Because Docker-published ports can interact unexpectedly with host firewalls, the BMC Compose stack binds application ports explicitly to 127.0.0.1 instead of depending on a firewall to hide them.

## AI profile

Core production can run with no model:

```bash
docker compose ps
bash runtime-doctor.sh
```

When ready to enable the resident utility model:

```bash
docker compose --profile local-ai up -d ollama
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

Then confirm `.env` contains:

```
LOCAL_AI_ENABLED=true
LOCAL_AI_URL=http://ollama:11434
LOCAL_AI_MODEL=qwen3:1.7b
```

The operator retains the confidence threshold and human-review fallback even when AI is enabled.

## Public ingress

After the Cloudflare Tunnel has been created and the token placed in `.env`:

```bash
docker compose --profile tunnel up -d cloudflared
```

Route:
- `hooks.bmcluminaryventures.com` -> `http://webhook_proxy:8080`

The public gateway should expose only the intended intake/webhook routes. Keep `/admin` private.

## Backups

Run:

```bash
./backup.sh
```

The backup script creates a compressed Postgres dump, checksum, and restricted file permissions. Defaults:
- directory: `./backups`
- retention: 30 days

Optional environment settings:
- `BACKUP_DIR`
- `BACKUP_RETENTION_DAYS`
- `INSTANCE_KEY`

Provider snapshots are useful, but a database dump remains the portable recovery artifact. Add an off-host/object-storage copy before the business has meaningful production data.

## White-label direction

The current design is intentionally a clonable single-tenant appliance, not a multi-tenant SaaS.

Each future customer deployment can receive its own:
- Compose project name
- instance key/name
- domains
- database/volumes
- Stripe configuration
- SMTP/IMAP identity
- service catalog
- provider/buyer data
- branding and public site
- Cloudflare Tunnel

This gives BMC a practical white-label product path without mixing multiple customers' data into the same database prematurely.

The first white-label milestone is a repeatable clean deployment from configuration. Multi-tenant billing, tenant administration, and cross-tenant control planes are later products, not launch requirements.
