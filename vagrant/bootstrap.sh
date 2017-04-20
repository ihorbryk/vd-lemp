#!/usr/bin/env bash

sudo apt-get install -y git vim

git clone https://github.com/ihorbryk/dotfiles.git /home/ubuntu/dotfiles

# Install Docker

sudo apt-get remove -y docker docker-engine

sudo apt-get update

sudo apt-get -y install \
	linux-image-extra-$(uname -r) \
	linux-image-extra-virtual

sudo apt-get -y install \
	apt-transport-https \
	ca-certificates \
	curl \
	software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

sudo apt-get update

sudo apt-get -y install docker-ce

curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# End install Docker