#!/bin/sh
echo "Enter new user's name: "
read username
echo "Adding user $username"
adduser $username
usermod -aG sudo $username
dpkg-reconfigure locales
apt update && sudo apt upgrade
apt install zsh git
su -c "cd /home/$username && wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh" $username
