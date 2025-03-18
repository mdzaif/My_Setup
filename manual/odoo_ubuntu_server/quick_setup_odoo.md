## Get Started

1. System update:

```bash
sudo apt update && sudo apt upgrade -y
```

2. Install dependencies

```bash
sudo apt install python3 python3-pip python3-dev python3-venv \
                 build-essential libjpeg-dev libpq-dev libxml2-dev \
                 libxslt1-dev libldap2-dev libsasl2-dev libffi-dev \
                 libssl-dev libjpeg-dev libblas-dev libatlas-base-dev \
                 libopenjp2-7-dev -y
```

3. Install PostgreSQL (Database)

```bash
sudo apt install postgresql -y
```

4. Start and enable service:

```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

5. Install Wkhtmltopdf

```bash
sudo apt install wkhtmltopdf -y
```

6. Create odoo database user

```bash
sudo -u postgres createuser -s odoo
```

7. Create odoo user in system

```bash
sudo useradd -m -d /opt/odoo -U -r -s /bin/bash odoo
```

8. Switch to odoo user

```bash
sudo su - odoo
```

9. Clone odoo repository:

```bash
git clone https://www.github.com/odoo/odoo --branch 18.0 --depth=1 # change branch according to newer version check github offical repo
```

10. Create virtual environment install dependencies

```bash
exit
```

```bash
apt install python3.12-venv # must be as root user
```

```bash
sudo su - odoo
```

```bash
cd odoo
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

11. Confing Odoo

```bash
sudo nano /etc/odoo.conf
```

add those lines:

```ini
[options]
admin_passwd = admin
db_host = False
db_port = False
db_user = odoo
db_password = False
addons_path = /opt/odoo/odoo/addons
logfile = /var/log/odoo.log
```

then press `Ctrl+S` and then `Ctrl+X` 

12. Create Systemd Service

```bash
sudo nano /etc/systemd/system/odoo.service
```
add those lines:

```ini
[Unit]
Description=Odoo ERP
After=network.target postgresql.service

[Service]
User=odoo
Group=odoo
ExecStart=/opt/odoo/odoo/venv/bin/python3 /opt/odoo/odoo/odoo-bin -c /etc/odoo.conf
Restart=always

[Install]
WantedBy=multi-user.target
```

then press `Ctrl+S` and then `Ctrl+X` 

13. Reload service and enable it

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now odoo
```

14. check the service status

```bash
sudo systemctl status odoo
```

15. Final setp (access odoo):
<p> http://< your-server-ip >:8069 </p>


## Enable Firewall

1. Make sure you have also access to the ssh

```bash
sudo ufw allow 22/tcp
```

2. Access for odoo:

```bash
sudo ufw allow 8069/tcp
```

3. Enable

```bash
sudo ufw enable
```

another setup

1. access postgre sql:

```bash
nano .bashrc # if your in /root directory
```

```bash
alias postg='sudo -u postgres psql'
```
then press `Ctrl+S` and then `Ctrl+X` 

## Troubleshooting 

--> Clear Database

```bash
postg
```

Check which database used by odoo user

```bash
\l
```

Now wirte that in you terminal

here odoo in last two line should be changed according to your database name listed in `\l` command
```bash
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'odoo';
DROP DATABASE odoo;
```

# Ref:

Odoo github: `https://github.com/odoo/odoo`