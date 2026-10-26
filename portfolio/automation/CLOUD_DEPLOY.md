# BMC Cloud VPS Deployment

Updated: 2026-10-25

## Production target

BMC production is now designed for a small always-on Linux VPS rather than a home appliance.

Live production class:
- OVHcloud VPS-3 2027, no commitment
- Ubuntu 26.04 LTS x86_64
- 6 vCPU
- 12 GB RAM
- 100 GB NVMe
- 2 Gbps unlimited public bandwidth
- Beauharnois, Canada East
- public IPv4/IPv6
- provider-level automated backup
- monthly billing until revenue proves the deployment

The stack remains provider-neutral and can be moved to another compatible Ubuntu VPS without application changes.

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

## Resource budget

The Compose file places conservative memory ceilings on long-running services so one process cannot consume the whole host. These ceilings were originally designed for an 8 GB host, so the live 12 GB VPS has useful reserve headroom.

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

Start conservatively with `qwen3:1.7b`. The live 12 GB host gives us room to test a 3B–4B utility model later only after observing real memory and latency. The LLM is an assistant for classification/summarization; it is not in the critical path for ordinary intake, routing, provider responses, payments, or templated messages.

## First deployment

On the live Ubuntu 26.04 VPS (or another fresh compatible Ubuntu VPS):

```bash
git clone https://github.com/bmcgarybot/bmc-luminary-site.git
cd bmc-luminary-site/portfolio/automation
chmod +x provision-cloud.sh bootstrap.sh start.sh stop.sh backup.sh runtime-doctor.sh configure-cloudflare.sh verify-public-ingress.sh verify-backup.sh install-backup-timer.sh
./provision-cloud.sh
```

Log out and back in if the provisioning script added your account to the Docker group.

Then:

```bash
cd bmc-luminary-site/portfolio/automation
./bootstrap.sh
```

Bootstrap creates local secrets when `.env` does not exist, starts the private core, reapplies safe schema/seeds, and runs the runtime doctor.

## Updating an existing production VPS

Do not use only `git pull && ./start.sh` for application-code changes. `ops_api` is built into a Docker image, so pulling source without rebuilding can leave the old API running.

Use the production update helper:

```bash
cd ~/bmc-luminary-site
git pull --ff-only
cd portfolio/automation
chmod +x deploy-update.sh
./deploy-update.sh .env
```

The helper is intentionally non-destructive:
- refuses to run when tracked files have local changes;
- refuses a detached HEAD;
- verifies the checkout matches its remote branch;
- preserves the existing `.env` and outreach switches;
- rebuilds only the current Ops API image;
- applies additive migrations through `migrate.sh`;
- recreates the API and webhook gateway;
- keeps the database and persistent Docker volumes intact;
- finishes with `runtime-doctor.sh`.

If the script reports that the checkout is behind the remote branch, run `git pull --ff-only` and rerun it. Never use a hard reset as a deployment shortcut.

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

Use a remotely managed Cloudflare Tunnel. In the Cloudflare dashboard create the tunnel, then obtain its tunnel token. Do not paste the token into chat, GitHub, or the Google Sheet.

On the VPS:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
chmod +x configure-cloudflare.sh verify-public-ingress.sh
./configure-cloudflare.sh
```

The helper prompts for the token with hidden terminal input, stores it only in the local production `.env`, forces restricted file permissions, and starts the tunnel profile.

In Cloudflare, publish this application route:
- hostname: `hooks.bmcservicenetwork.com`
- service: `http://webhook_proxy:8080`

Then verify from the VPS:

```bash
./verify-public-ingress.sh
```

The verifier confirms the public hostname reaches the gateway while `/admin` and `/api/admin/preflight` still return 404 through the public path.

The nginx gateway exposes only:
- `/api/intake`
- `/api/stripe-webhook`
- `/webhook/*` for n8n webhooks

Everything else returns 404. BMC admin, the n8n editor, SearXNG, Ollama, PostgreSQL, and direct Ops API access stay private.

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

Verify the latest dump by restoring it into an isolated temporary database:

```bash
./verify-backup.sh
```

The verification checks the SHA-256, performs a real `pg_restore` into a temporary database, validates core row counts, then drops the test database without modifying production.

Install the daily portable-dump timer:

```bash
./install-backup-timer.sh
```

The timer runs at approximately 10:15 UTC / 3:15 AM America/Phoenix each day, with a small randomized delay, and performs an immediate test run when installed.

Provider snapshots are useful, but a database dump remains the portable recovery artifact. The live OVH automated backup plus the local portable dump gives two layers; add a true off-host/object-storage copy before the business has meaningful production data.

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
