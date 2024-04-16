#!bin/bash
# command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup1.sh | bash
#update
sudo apt update && sudo apt dist-upgrade -y

#useful variable
usr=$(whoami)

#configure bashrc
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/bashcon.txt >> /home/$usr/.bashrc

curl -fLo /home/$usr/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/vimcon.txt > /home/$usr/.vimrc

#read the new configure file
source /home/$usr/.bashrc


echo "Configure Instraction"
echo "---------------------"
echo "Type$ source .vimrc"
echo "open vim"
echo "Tpye :PlugInstall"
echo "source .vimrc"
