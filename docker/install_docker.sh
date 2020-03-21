#!/bin/bash


#First we gonna remove the old versions of docker, with the command:
apt-get purge docker lxc-docker docker-engine docker.io -y

#Update:
apt update -y

#Download the dependencies:
apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

#Download docker official GPG key to verify the intengrity of packages before installing:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add –  -y

#Add the Docker repository to our system repository:
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"  -y

#Update:
apt update -y

#Install Docker Engine - Community and containerd:
curl -L "https://github.com/javabean/arm-compose/releases/download/1.21.2/docker-compose-Linux-armv7l" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Install Docker Compose:
apt install docker-compose -y

#Check the status before the installation:
systemctl status docker
