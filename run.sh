#!/bin/bash

apt-key adv --keyserver keyserver.ubuntu.com --recv E6D4736255751E5D
echo 'deb http://archive.neon.kde.org/user bionic main' > /etc/apt/sources.list.d/neon.list
apt update
apt install apt-config-icons apt-config-icons-hidpi apt-config-icons-large apt-config-icons-large-hidpi appstream -y

while :
do

apt update
sleep 4

done
