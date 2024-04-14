#!bin/bash
#command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup_user.sh | bash

#admin account
admin=$(whoami)

# Add user 
sudo useradd -g $admin -s /bin/bash -c "Md. Zaif Imam Mahi" -m -d /home/zaifmahi zaifmahi

#Set password
sudo passwd zaifmahi

#Set user to the sudo group
sudo usermod -aG sudo zaifmahi

echo "process complete"

