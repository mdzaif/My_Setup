#!/bin/bash
# description: Update package for ubuntu

# update dpkg
sudo apt update && sudo apt upgrade

# flatpak udpate
flatpak update

# snap update
snap refresh
