#!/bin/bash
# For bootstrap setup
# install the git
which git > /dev/null

if [ $? -ne 0 ]; then
  sudo apt install git # for debian based
else
  echo "Installed"
fi
# config my environment

read -p "User name: " usr
read -p "Email:  " email
git config --global user.name "$usr" && git config --global user.email "$email"
git config --list
