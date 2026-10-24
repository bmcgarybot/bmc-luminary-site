#!/usr/bin/env bash
set -euo pipefail

if [ ! -r /etc/os-release ]; then
  echo "Cannot identify operating system."
  exit 1
fi
. /etc/os-release

if [ "${ID:-}" != "ubuntu" ]; then
  echo "This production provisioner targets Ubuntu. Detected: ${PRETTY_NAME:-unknown}."
  exit 1
fi

echo "Provisioning BMC cloud host on ${PRETTY_NAME}..."

sudo apt-get update
sudo apt-get install -y ca-certificates curl git

if ! command -v docker >/dev/null 2>&1; then
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  . /etc/os-release
  sudo tee /etc/apt/sources.list.d/docker.sources >/dev/null <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: ${UBUNTU_CODENAME:-$VERSION_CODENAME}
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

sudo systemctl enable --now docker

if ! id -nG "$USER" | tr ' ' '\n' | grep -qx docker; then
  sudo usermod -aG docker "$USER"
  echo "Added $USER to docker group. Log out and back in before running Docker without sudo."
fi

if ! swapon --show --noheadings | grep -q .; then
  if [ "$(df --output=avail -k / | tail -1)" -gt 4194304 ]; then
    echo "Creating 2 GB emergency swap..."
    sudo fallocate -l 2G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile >/dev/null
    sudo swapon /swapfile
    if ! grep -q '^/swapfile ' /etc/fstab; then
      echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab >/dev/null
    fi
  else
    echo "Skipping swap creation: less than 4 GB free on root filesystem."
  fi
fi

echo
echo "Docker version:"
sudo docker --version
sudo docker compose version
echo
echo "Provisioning complete."
echo "Next: verify SSH key access, log out/in if needed, then run ./bootstrap.sh."
echo "The BMC application ports are bound to localhost; do not publish them directly."
