#!/bin/sh
echo "+++++ baseline update +++++"
# baseline update
sudo apt update && sudo apt upgrade
echo "+++++ install starting build repo +++++"
# install starting build repo
cd /
sudo git clone https://github.com/karnthis/dev-op-boilerplate
sudo mv core-deploy _prod
sudo chown -R ${USER}: /_prod
echo "+++++ move bin and related files +++++"
# move bash files
mv "/_prod/bash/bin" ~
chmod u+x ~/bin/*
echo "+++++ update acme file perms +++++"
# update acme file perms
cd /_prod/traefik
sudo chmod 600 acme.json
echo "+++++ nodejs install +++++"
# nodejs install
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs
echo "+++++ Docker install + setup +++++"
# Docker install + setup
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update && sudo apt upgrade
apt-cache policy docker-ce
sudo apt install docker-ce docker-ce-cli
sudo systemctl enable docker
echo "+++++ update users with docker powers +++++"
# update users with docker powers
sudo groupadd docker
sudo usermod -aG docker $USER
echo "+++++ install docker-compose +++++"
# install docker-compose
sudo apt install docker-compose
echo "+++++ Rebooting +++++"
# restart server
sudo reboot
