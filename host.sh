#! /bin/bash
yum update -y
curl -fsSL https://get.docker.com/ | sh
sudo systemctl enable docker.service
sudo systemctl start docker
sudo docker run -e CATTLE_HOST_LABELS='Name=vbx-hst' \
	--rm --privileged -v /var/run/docker.sock:/var/run/docker.sock \
	-v /var/lib/rancher:/var/lib/rancher \
	rancher/agent:v1.2.5 http://192.168.50.50:8080/v1/scripts/08E7A124D98AB02233F1:1483142400000:rBrLKo9bzo1qSZfeu1I3UrsXc8
