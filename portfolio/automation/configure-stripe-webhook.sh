#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"
if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE"
  exit 1
fi

printf "Paste the Stripe webhook signing secret (input hidden): "
IFS= read -r -s SECRET
printf "\n"

if [[ "$SECRET" != whsec_* ]] || [ "${#SECRET}" -lt 20 ]; then
  echo "That does not look like a Stripe webhook signing secret."
  exit 1
fi

python3 - "$ENV_FILE" "$SECRET" <<'PY'
from pathlib import Path
import sys

path=Path(sys.argv[1])
secret=sys.argv[2]
key="STRIPE_WEBHOOK_SECRET"
lines=path.read_text().splitlines()
out=[]
found=False
for line in lines:
    if line.startswith(key+"="):
        out.append(key+"="+secret)
        found=True
    else:
        out.append(line)
if not found:
    out.append(key+"="+secret)
path.write_text("\n".join(out)+"\n")
PY

unset SECRET
chmod 600 "$ENV_FILE"

docker compose --env-file "$ENV_FILE" up -d --force-recreate ops_api
# nginx resolves Docker service names when it starts. Recreate the public
# gateway after ops_api so it cannot retain the previous container IP.
docker compose --env-file "$ENV_FILE" up -d --force-recreate webhook_proxy
echo
bash ./runtime-doctor.sh "$ENV_FILE"
echo
bash ./verify-public-ingress.sh

echo
echo "Stripe webhook signing secret installed locally on the VPS. It was not written to Git."
