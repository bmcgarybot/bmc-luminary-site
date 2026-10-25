#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${ENV_FILE:-.env}"
SITE_URL="https://bmcservicenetwork.com"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE"
  exit 1
fi

python3 - "$ENV_FILE" "$SITE_URL" <<'PY'
from pathlib import Path
import sys
path=Path(sys.argv[1])
value=sys.argv[2]
key="PUBLIC_SITE_URL"
lines=path.read_text().splitlines()
out=[]
found=False
for line in lines:
    if line.startswith(key+"="):
        out.append(f"{key}={value}")
        found=True
    else:
        out.append(line)
if not found:
    out.append(f"{key}={value}")
path.write_text("\n".join(out)+"\n")
PY

chmod 600 "$ENV_FILE"
docker compose --env-file "$ENV_FILE" up -d --build --force-recreate ops_api

echo "PUBLIC_SITE_URL set to $SITE_URL"
echo "Current API environment value:"
docker compose --env-file "$ENV_FILE" exec -T ops_api /bin/sh -lc 'printf "%s\n" "$PUBLIC_SITE_URL"'
