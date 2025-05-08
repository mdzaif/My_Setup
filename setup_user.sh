#!/bin/bash
#command: curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/setup_user.sh > setup_user.sh && ./setup_user.sh && rm setup_user.sh

#admin account
admin=$(whoami)

# Add user 
sudo useradd -g $admin -s /bin/bash -c "Md. Zaif Imam Mahi" -m -d /home/zaifmahi zaifmahi

#Set password
passwd zaifmahi

#Set user to the sudo group
sudo usermod -aG sudo zaifmahi

if [ $? -eq 0 ]; then
	echo "process complete"
else
	echo "process failed"
fi

sleep 5
