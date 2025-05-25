# Description

Grub entry for dual boot

# Steps

1. Install memtest86+

```bash
sudo apt install memtest86+
```

2. Edit /etc/default/grub

```bash
sudo nano /etc/default/grub
```

3. find and edit this line:

```ini
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash memtest86+"
```

4. check out:
<ul>
	<li> if <b>GRUB_HIDDEN_TIMEOUT=0</b> this line exists then change it to <b>GRUB_HIDDEN_TIMEOUT=1</b> </li>
	<li> if <b>GRUB_DISABLE_OS_PROBER=true</b> this line exists then chagne it to <b>GRUB_DISABLE_OS_PROBER=false</b> </li>
</ul>


5. Now save and close the file and update grub

```bash
sudo update-grub
```
