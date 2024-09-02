## Get Started

<b> Enable minimize window from dash: </b> <br>

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
```

<b> Install the gnome shell extension: </b>

```bash
sudo apt update && sudo apt install gnome-shell-extensions
```
*[Note]*: enable the clipboard indecator & net speed simplifies for personal use.<br><br>

<b> Solve the audio issue on laptop: </b>

1. Reinstall the alsa & also install pulseaudio. <br>

```bash
sudo apt-get install --reinstall alsa-base pulseaudio
```

2. Restart the services. <br>

```bash
sudo alsa force-reload
```

<b> Setup avro bangla: </b> <br>

1. Install 'Avro Phonetic' from App Center. <br>

2. Now Settings > Keyboard. Under Input Source click '+ Add Input Source...' then search avro, click other select 'Avro Phonetic' then save the change. <br>

<b> Setup fonts: </b>

1. Download the font_back.zip file & extract it <br>

3. Create a directory at /usr/share/fonts/

```bash
sudo mkdir /usr/share/fonts/TTF
```

2. Copy all files inside the extracted directory to /usr/share/fonts/TTF/

```bash
sudo cp ~/font_back/* /usr/share/fonts/TTF/
```

3. Save the changes<br>

```bash
fc-cache -f -v
```

<b> Intall powertop (laptop power saving)</b>

<p> Powertop required following components: </p>

<ul>
    <li> Development Tools such as C++, g++, libstdc++, autoconf, automake, and libtool.</li>
    <li>In addition to the above, it also requires pciutils-devel, ncurses-devel, and libnl-devel components.</li>
    <li>kernel version => 2.6.38</li>
</ul>

 Installing reequired libraries: 

```bash
sudo apt update
```

```bash
sudo apt install build-essential autoconf automake libtool
```
```bash
sudo apt install libpci-dev libncurses-dev libnl-3-dev libnl-genl-3-dev
```

Now, install powertop on your laptop

```bash
sudo apt install powertop
```

<b> Start powertop </b>

```bash
sudo powertop --calibrate
```

```bash
sudo powertop --auto-tune
```

<p> Setup powertop --auto-tune as startup </b>

Open your terminal & type:

```bash
sudo vim /etc/systemd/system/powertop.service
```

Now, copy and paste those lines: 

```bash
[Unit]
Description=PowerTOP auto tune

[Service]
Type=idle
Environment="TERM=dumb"
ExecStart=/usr/sbin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
```
<p> Exit and save the change with vim: </p> 
Then type <b>:wq</b> then press <b>Enter</b>. <br>


<br><br><b> Reference </b>

1. <a href='https://github.com/fenrus75/powertop'>powertop github repo</a>

2. <a href='https://forums.linuxmint.com/viewtopic.php?t=232654'>Powertop AUto tune on boot system d</a>




