#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${ENV_FILE:-.env}"
PUBLIC_HOST="${PUBLIC_HOOKS_HOST:-hooks.bmcservicenetwork.com}"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE. Run ./bootstrap.sh first."
  exit 1
fi

if ! command -v docker >/dev/null 2>&1 || ! docker compose version >/dev/null 2>&1; then
  echo "Docker Compose is required."
  exit 1
fi

printf "Paste the Cloudflare Tunnel token OR the full Docker command (input will be hidden): "
IFS= read -r -s TUNNEL_INPUT
printf "\n"

TUNNEL_TOKEN="$TUNNEL_INPUT"
if [[ "$TUNNEL_INPUT" == *"--token"* ]]; then
  TUNNEL_TOKEN="${TUNNEL_INPUT##*--token }"
  TUNNEL_TOKEN="${TUNNEL_TOKEN%% *}"
fi

if [ -z "$TUNNEL_TOKEN" ] || [ "${#TUNNEL_TOKEN}" -lt 40 ]; then
  echo "Token looks empty or too short; no changes were made."
  exit 1
fi

python3 - "$ENV_FILE" "$TUNNEL_TOKEN" "$PUBLIC_HOST" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
token = sys.argv[2]
host = sys.argv[3]
lines = path.read_text().splitlines()

updates = {
    "CLOUDFLARE_TUNNEL_TOKEN": token,
    "WEBHOOK_URL": f"https://{host}/",
}

seen = set()
out = []
for line in lines:
    if "=" in line and not line.lstrip().startswith("#"):
        key = line.split("=", 1)[0]
        if key in updates:
            out.append(f"{key}={updates[key]}")
            seen.add(key)
            continue
    out.append(line)

for key, value in updates.items():
    if key not in seen:
        out.append(f"{key}={value}")

path.write_text("\n".join(out) + "\n")
PY

chmod 600 "$ENV_FILE"

echo "Applying the new public-domain environment and starting the Cloudflare Tunnel..."
docker compose --env-file "$ENV_FILE" --profile tunnel up -d ops_api n8n webhook_proxy cloudflared

echo
echo "Container status:"
docker compose --env-file "$ENV_FILE" ps webhook_proxy cloudflared

if ! docker compose --env-file "$ENV_FILE" ps --status running cloudflared | grep -q cloudflared; then
  echo
  echo "Cloudflare Tunnel is not running. Recent logs:"
  docker compose --env-file "$ENV_FILE" logs --tail=80 cloudflared
  exit 1
fi

echo
echo "Tunnel container is running."
echo "In Cloudflare Dashboard > Networking > Tunnels, publish:"
echo "  Hostname: $PUBLIC_HOST"
echo "  Service:  http://webhook_proxy:8080"
echo
echo "After the published application route is saved, run:"
echo "  ./verify-public-ingress.sh"
