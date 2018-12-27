#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade
sudo apt autoremove

# Install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
# apt-cache policy docker-ce
sudo apt install docker-ce
# sudo systemctl status docker
sudo usermod -aG docker ${USER}
# su - ${USER}

# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Check versions
docker --version
docker-compose --version
echo "All done. Please restart the system."