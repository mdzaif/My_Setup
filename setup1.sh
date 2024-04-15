#!bin/bash
# command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup1.sh | bash
#update
sudo apt update && sudo apt dist-upgrade -y

#useful variable
usr=$(whoami)

#configure bashrc
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/bashcon.txt >> /home/$usr/.bashrc

#configure vimrc
#touch /home/$usr/.vimrc
#touch ~/.vimrc.plug
#mkdir ~/vimplug-plugins

#curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/vim_plug.txt > /home/$usr/.vimrc.plug
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/vimcon.txt > /home/$usr/.vimrc

#read the new configure file
source /home/$usr/.bashrc
source /home/$usr/.vimrc

