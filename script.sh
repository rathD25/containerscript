#!/bin/bash
echo Enter new user's name: 
read username
adduser $username
usermod -aG sudo $username
su $username
sudo apt update && sudo apt upgrade
sudo dpkg-reconfigure locales
sudo apt install zsh
