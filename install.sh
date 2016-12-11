#!/bin/sh

wget -O - http://bird.network.cz/debian/apt.key | apt-key add -
apt-get install lsb-release
echo "deb http://bird.network.cz/debian/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/bird.list
apt-get update
apt-get install bird
