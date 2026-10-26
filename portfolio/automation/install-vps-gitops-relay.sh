#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ROOT="$(git rev-parse --show-toplevel)"
AUTOMATION="$ROOT/portfolio/automation"
AGENT="$AUTOMATION/vps-gitops-relay.py"
RUN_USER="$(id -un)"
RUN_GROUP="$(id -gn)"
CONFIG_DIR="$HOME/.config"
CONFIG_FILE="$CONFIG_DIR/bmc-vps-relay.env"
SERVICE="/etc/systemd/system/bmc-vps-relay.service"
TIMER="/etc/systemd/system/bmc-vps-relay.timer"

[ -f "$AGENT" ] || { echo "Missing $AGENT"; exit 1; }
[ -f "$AUTOMATION/.env" ] || { echo "Missing $AUTOMATION/.env"; exit 1; }

mkdir -p "$CONFIG_DIR"
chmod 700 "$CONFIG_DIR"

existing_token=""
if [ -f "$CONFIG_FILE" ]; then
  existing_token="$(grep -m1 '^BMC_RELAY_GITHUB_TOKEN=' "$CONFIG_FILE" 2>/dev/null | cut -d= -f2- || true)"
fi
token="${BMC_RELAY_GITHUB_TOKEN:-$existing_token}"

if [ -z "$token" ]; then
  echo
  echo "One-time GitHub credential required."
  echo "Create a fine-grained GitHub personal access token with:"
  echo "  Repository access: Only bmcgarybot/bmc-luminary-site"
  echo "  Repository permission: Contents = Read and write"
  echo "  Repository permission: Actions = Read-only (recommended)"
  echo
  read -r -s -p "Paste token (input hidden): " token
  echo
fi

if [ -z "$token" ]; then
  echo "No GitHub token supplied."
  exit 1
fi

umask 077
cat >"$CONFIG_FILE" <<EOF
BMC_RELAY_GITHUB_TOKEN=$token
BMC_RELAY_REPOSITORY=bmcgarybot/bmc-luminary-site
BMC_RELAY_BRANCH=vps-relay
BMC_RELAY_APP_ENV=.env
BMC_RELAY_MAX_REQUEST_AGE_HOURS=24
EOF
chmod 600 "$CONFIG_FILE"

echo
echo "Validating relay agent syntax..."
python3 -m py_compile "$AGENT"

echo "Testing GitHub read/write relay access..."
set -a
. "$CONFIG_FILE"
set +a
python3 "$AGENT" --register

echo
echo "Installing systemd relay service/timer..."
sudo tee "$SERVICE" >/dev/null <<EOF
[Unit]
Description=BMC VPS GitOps relay
After=network-online.target docker.service
Wants=network-online.target

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
WorkingDirectory=$AUTOMATION
EnvironmentFile=$CONFIG_FILE
Environment=PYTHONUNBUFFERED=1
ExecStart=/usr/bin/python3 $AGENT --once
Nice=10
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=full
ReadWritePaths=$HOME $ROOT
EOF

sudo tee "$TIMER" >/dev/null <<'EOF'
[Unit]
Description=Poll BMC GitHub relay mailbox every minute

[Timer]
OnBootSec=45s
OnUnitActiveSec=60s
AccuracySec=10s
Persistent=true

[Install]
WantedBy=timers.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now bmc-vps-relay.timer

echo
echo "Running first relay poll..."
sudo systemctl start bmc-vps-relay.service

echo
echo "Relay timer status:"
sudo systemctl --no-pager status bmc-vps-relay.timer || true

echo
echo "Most recent relay service log:"
sudo journalctl -u bmc-vps-relay.service -n 30 --no-pager || true

echo
echo "Installed. Future allowlisted requests/results use the GitHub vps-relay branch."
