
## Problem Statement

Description: move wayland to x11

OS: Ubuntu.

# Setps

1. Navigate this file:

```bash
sudo nano /etc/gdm3/custom.conf
```

2. Remove the `#` from this line and save it:

```ini
WaylandEnable=false
```

3. Reboot your system
