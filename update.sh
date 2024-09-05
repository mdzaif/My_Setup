#!/bin/bash
# description: Update package for ubuntu

# update debian package(dpkg)
echo "Check dpkg...."
sleep 5
clear
sudo apt update 
sudo apt upgrade -y
echo "Exit status: $?"
sleep  5
clear

#flatpak update
if [[ $(command -v flatpak > /dev/null && echo $?) == 0 ]]; then
  echo "Check flatpak packages..."
  sleep 5
  clear
  flatpak update
  echo "Exit status: $?"
  sleep 5
  clear
fi

# snap update
echo "Check snap packages..."
sleep 5
clear
sudo snap refresh
echo "Exit status: $?"
