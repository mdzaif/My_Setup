#!bin/bash

#update
sudo apt update && sudo apt dist-upgrade -y

#useful variable
usr=$(whoami)

#useful installation
which curl 2>&1 /dev/null
if [ $? -eq 0 ]; then
    sudo apt install curl 2>&1 /dev/null
fi

#configure bashrc
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/bashcon.txt >> /home/$usr/.bashrc

#configure vimrc
touch /home/$usr/.vimrc
touch ~/.vimrc.plug
mkdir ~/vimplug-plugins

curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/vim_plug.txt > /home/$usr/.vimrc.plug

#read the new configure file
source /home/$usr/.bashrc
source /home/$usr/.vimrc

