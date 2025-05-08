#!/bin/bash
# command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup.sh | bash

# Update
sudo apt update && sudo apt upgrade -y

# Find user
usr=$(whoami)

echo "User: $usr"
echo "Take 10 sec. to start the process, if you want to stop the process press Ctrl+C"
sleep 10
echo "Start the process...."
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

# tips
echo "run: source .bashrc"
echo "run: source .vimrc"
