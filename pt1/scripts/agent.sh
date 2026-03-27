#!/bin/bash
set -e
echo "=== Installation K3s agent ==="
echo "ROLE = $ROLE"
echo "NODE_IP = $NODE_IP"
while [ ! -f /vagrant/token ]; do
  echo "Attente du token K3s..."
  sleep 2
done
TOKEN=$(cat /vagrant/token)
curl -sfL https://get.k3s.io | K3S_URL="https://192.168.56.110:6443" K3S_TOKEN="$TOKEN" sh -
echo "=== K3s agent installé et connecté au server ==="