#!/bin/sh

sudo apt install -y jq curl

sudo apt-get remove docker-compose -y

VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)

DESTINATION=/usr/bin/docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
sudo chmod 755 $DESTINATION

