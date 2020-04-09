#! /usr/bin/env bash

# Upgrade it to multiple users

set -xe

echo "Providing some useful applicaitons to start the spark tests.."
touch /tmp/wakeup # My sanity
# sudo usermod -aG docker $USER
sudo usermod -aG docker ec2-user
sudo pip install docker-compose

# Install docker-engine
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker your-user