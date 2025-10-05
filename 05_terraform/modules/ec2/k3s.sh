#!/bin/bash
set -e
sudo apt-get update -y
curl -sfL https://get.k3s.io | sh -

sleep 10

sudo  chmod 644 /etc/rancher/k3s/k3s.yaml
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
sudo systemctl enable k3s
sudo systemctl start k3s

echo "K3s installation complete."