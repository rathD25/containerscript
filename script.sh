#!/bin/sh
echo "Enter new user's name: "
read username
echo "Adding user $username"
adduser $username
usermod -aG sudo $username
dpkg-reconfigure locales
apt update && sudo apt upgrade
apt install zsh
su -m $username
echo "You should be within the $username shell"
