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