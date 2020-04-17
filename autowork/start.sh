#!/bin/bash
echo install docker
yum install -y docker

echo start docker
systemctl start docker
systemctl enable docker
systemctl status docker

echo deamon
mkdir -p /etc/docker
cp daemon.json /etc/docker/daemon.json
systemctl daemon-reload
systemctl restart docker

echo move things
mv hadoop_docker /opt/
cd /opt/hadoop_docker

echo start sh
sudo bash build_docker_image.sh
sudo bash create_network.sh
sudo bash start_container.sh
