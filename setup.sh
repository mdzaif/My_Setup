#!/bin/bash
# command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup.sh | bash

# Update
sudo apt update && sudo apt upgrade -y

# Find user
usr=$(whoami)

# Configure bash
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/bashcon.txt >> /home/$usr/.bashrc
if [ $? -eq 0 ]; then
	echo "bash configuration file updated"
fi

# Configure the vim
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/vimcon.txt > /home/$usr/.vimrc
if [ $? -eq 0 ]; then
	echo "vim configuration file updated"
fi

#read the new configure file
source /home/$usr/.bashrc
source /home/$usr/.vimrc

