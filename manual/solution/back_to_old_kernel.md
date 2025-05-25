#Description

Back to old kernel in Debian 12 Bookworm

1. check the current kernel

```bash
apt list -a | grep linux-image
```

2. add this line at the bottom in /etc/apt/sources.list

```ini
deb http://deb.debian.org/debian buster main
```

<b>Note:</b> change the `buster` to your suggested kernel package.

3. update repo. and install the buster package:

```bash
sudo apt update; sudo apt install -t buster-backports linux-image-amd64
```

4. Install the kernel image and headers:

```bash
sudo apt install linux-image-5.10.0-8-amd64 linux-headers-5.10.0-8-amd64
```

5. before next step check your current kernel images and headers:

```bash
dpkg -l | grep linux-image
```

```bash
dpkg -l | grep linux-headers
```

<b>Note:</b> confirmed that those kernel are running currently.

6. restart with old kernel

```bash
reboot your system and select the old kernel to boot.
```


7. remove the default kernel

```bash
sudo apt remove <kernel_image_default_one> <kernel_headers_default_one>
```

8. Reboot your system.

9. System automatically chose kernel which we want(if there is no other kernels are exists)


