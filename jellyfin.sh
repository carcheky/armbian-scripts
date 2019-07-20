#!/bin/bash
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/carcheky/armbian-scripts/master/jellyfin.sh)"



sudo apt install apt-transport-https -y
sudo add-apt-repository universe
wget -O - https://repo.jellyfin.org/ubuntu/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin -y
