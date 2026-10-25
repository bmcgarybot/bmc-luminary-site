#!/usr/bin/env bash
set -euo pipefail

ENV_FILE="${1:-.env}"
KEY="SOURCE_NATIVE_MARKETS"
REQUIRED_MARKETS=(
  "Prescott" "Prescott Valley" "Chino Valley" "Dewey-Humboldt" "Mayer"
  "Cordes Lakes" "Williamson Valley" "Ash Fork" "Seligman" "Skull Valley"
  "Camp Verde" "Cottonwood" "Sedona" "Flagstaff" "Winslow" "Kingman"
  "Golden Valley" "Bullhead City" "Phoenix" "Scottsdale" "Tucson"
)

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE"
  exit 1
fi

python3 - "$ENV_FILE" "$KEY" "${REQUIRED_MARKETS[@]}" <<'PY'
from pathlib import Path
import sys

path=Path(sys.argv[1])
key=sys.argv[2]
required=sys.argv[3:]
lines=path.read_text().splitlines()
current=[]
for line in lines:
    if line.startswith(key+"="):
        current=[x.strip() for x in line.split("=",1)[1].split(",") if x.strip()]
        break

seen=set()
merged=[]
for item in current+required:
    if item not in seen:
        seen.add(item)
        merged.append(item)

replacement=key+"="+",".join(merged)
out=[]
found=False
for line in lines:
    if line.startswith(key+"="):
        out.append(replacement)
        found=True
    else:
        out.append(line)
if not found:
    out.append(replacement)

path.write_text("\n".join(out)+"\n")
print(replacement)
PY

chmod 600 "$ENV_FILE"
echo "Expanded SOURCE_NATIVE_MARKETS without changing any other environment setting."
