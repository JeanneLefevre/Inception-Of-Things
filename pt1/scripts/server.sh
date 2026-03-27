#!/bin/bash
set -e
echo "=== Installation K3s server ==="
echo "ROLE = $ROLE"
echo "NODE_IP = $NODE_IP"
curl -sfL https://get.k3s.io | sh -
sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/token
echo "=== K3s server installé et token partagé ==="