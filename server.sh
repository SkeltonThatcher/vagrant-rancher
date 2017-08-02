#! /bin/bash
yum update -y
curl -fsSL https://get.docker.com/ | sh
sudo systemctl enable docker.service
sudo systemctl start docker
sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:latest
