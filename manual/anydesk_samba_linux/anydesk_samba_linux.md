

## Get Started

Samba use for file sharing and anydesk use for remote access your pc. You can use chrome remote desktop but I suggest use anydesk, also you can use sftp instead of samba.
I suggest sftp for security. Here, is an update anydesk is not support wayland so make sure your host system in x11. <a href="https://github.com/mdzaif/My_Setup/blob/main/manual/solution/back_to_x11.md">How to go x11?</a>


## Install Samba

1. First install the samba

```bash
sudo apt update && sudo apt install samba
```

2. backup default smb.conf file

```bash
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.backup
```

3. Edit the samba configuration

```bash
sudo nano /etc/samba/smb.conf
```

4. Give the info from your end

```ini
[Media]
comment = Media Share
path = /path/to/your/media/folder  # Replace with your media directory
browsable = yes
read only = no
guest ok = no  # Set to "yes" for public access (no password)
valid users = yourusername  # Only if using authentication and use the linux system user name # suggested
```

5. Set password for samba user.

```bash
sudo smbpasswd -a yourusername  # Replace with your linux system username
```

6. Give the proper permission for that shared directory.

```bash
sudo chmod -R 755 /path/to/your/media/folder
sudo chown -R yourusername:yourusername /path/to/your/media/folder
```

7. Enable and disable services

```bash
sudo systemctl disable samba-ad-dc.service
```

```bash
sudo systemctl enable smbd.service
sudo systemctl start smbd.service
```

8. Check the status of samba

```bash
sudo systemctl status smbd.service
```

9. If it active and enable then go forward.

## Install anydesk

1. Setup the gpg key and private repository list for up to date and then install the anydesk package.

```bash
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update
sudo apt install anydesk
```
2. Set the process enable, so when your system is reboot it will automatically start.

```bash
sudo systemctl enable anydesk
```

3. Now, open `AnyDesk` and configure the anydesk like setup the password and collect the connection code. and set the user access list. I leave it up to you.

4. Install `AnyDesk` on PC and mobile to access your system. apply the code you collect from the shared pc and connect give password then you ready to go!

