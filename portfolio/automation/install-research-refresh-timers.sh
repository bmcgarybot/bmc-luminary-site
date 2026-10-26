#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

PROJECT_DIR="$(pwd)"
ENV_FILE="${1:-.env}"
RUN_USER="${SUDO_USER:-$USER}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi
if ! id "$RUN_USER" >/dev/null 2>&1; then
  echo "Cannot resolve service user: $RUN_USER"
  exit 1
fi
RUN_GROUP="$(id -gn "$RUN_USER")"
ENV_ABS="$PROJECT_DIR/$ENV_FILE"

chmod +x ./research-source-refresh.sh ./assistant-directory-bootstrap.py ./assistant-homversa-bootstrap.py

sudo -n true >/dev/null 2>&1 || {
  echo "Passwordless sudo is required to install system timers."
  exit 3
}

sudo tee /etc/systemd/system/bmc-directory-refresh.service >/dev/null <<EOF
[Unit]
Description=BMC public business directory discovery refresh
Requires=docker.service
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
SupplementaryGroups=docker
WorkingDirectory=$PROJECT_DIR
ExecStart=/bin/bash $PROJECT_DIR/research-source-refresh.sh $ENV_ABS directory
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=6
EOF

sudo tee /etc/systemd/system/bmc-directory-refresh.timer >/dev/null <<'EOF'
[Unit]
Description=Refresh BMC public directory discovery daily

[Timer]
OnCalendar=*-*-* 11:30:00 UTC
Persistent=true
RandomizedDelaySec=1800
Unit=bmc-directory-refresh.service

[Install]
WantedBy=timers.target
EOF

sudo tee /etc/systemd/system/bmc-licensed-refresh.service >/dev/null <<EOF
[Unit]
Description=BMC Arizona licensed-trade discovery refresh
Requires=docker.service
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
SupplementaryGroups=docker
WorkingDirectory=$PROJECT_DIR
ExecStart=/bin/bash $PROJECT_DIR/research-source-refresh.sh $ENV_ABS licensed
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=6
EOF

sudo tee /etc/systemd/system/bmc-licensed-refresh.timer >/dev/null <<'EOF'
[Unit]
Description=Refresh BMC licensed-trade discovery weekly

[Timer]
OnCalendar=Sun *-*-* 12:30:00 UTC
Persistent=true
RandomizedDelaySec=1800
Unit=bmc-licensed-refresh.service

[Install]
WantedBy=timers.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now bmc-directory-refresh.timer bmc-licensed-refresh.timer

echo "BMC research refresh timers installed."
sudo systemctl list-timers bmc-directory-refresh.timer bmc-licensed-refresh.timer --no-pager
