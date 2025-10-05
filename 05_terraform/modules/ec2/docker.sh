#!/bin/bash
sudo apt-get update -y
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu

sudo docker run --rm -dp 80:80 --name first-nginx nginx:latest
echo "Docker installation and Nginx container setup complete."