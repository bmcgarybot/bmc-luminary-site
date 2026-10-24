# HP Automation Appliance - Start Here

The GitHub build is the software package. It is **not running on the HP yet** until these files are copied/cloned there and Docker is started.

## Runtime stack
- PostgreSQL — leads, vendors, matches, outreach, events, revenue
- BMC Ops API — deterministic intake/matching/status engine
- n8n — orchestration, Sheets sync, research, AI helpers, reports
- scheduler — offer expiry/reroute, follow-up, guarded outreach
- nginx — webhook/API gateway
- Cloudflare Tunnel — public HTTPS ingress
- Ollama/Qwen3 1.7B — optional utility AI

## Linux first boot
```bash
chmod +x bootstrap.sh start.sh stop.sh backup.sh
./bootstrap.sh
```

The core starts privately. Public outreach remains disabled.

## Before public launch
Edit `.env` and configure:
- SMTP_HOST / SMTP_USER / SMTP_PASSWORD
- SMTP_FROM
- BUSINESS_POSTAL_ADDRESS
- CLOUDFLARE_TUNNEL_TOKEN

Then start the tunnel:
```bash
docker compose --profile tunnel up -d cloudflared
```

Optional utility AI:
```bash
docker compose --profile local-ai up -d ollama
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

## Outreach safety
`OUTREACH_ENABLED=false` is the default and should stay false until:
- sending identity is correct,
- real postal address is configured,
- opt-out/reply handling is tested,
- first campaign copy is manually reviewed.

## Updating
Run `./bootstrap.sh` after pulling changes. The schema and seed SQL are written to be rerunnable without deleting live data.

## Backup
```bash
./backup.sh
```
