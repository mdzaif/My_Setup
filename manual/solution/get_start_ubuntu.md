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