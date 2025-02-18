#!/usr/bin/env bash

cd ~/

echo "##### Update and Install awscli #####"
sudo yum update -y && pip install --upgrade --user awscli pip

echo "##### Configure region to EU-WEST-1"
aws configure set region eu-west-1

echo "##### Download and install docker #####"
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "##### Install jq #####"
sudo yum -y install jq

echo "##### Install PyYAML #####"
sudo pip-3.6 install PyYAML


