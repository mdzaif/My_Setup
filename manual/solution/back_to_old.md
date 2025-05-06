## Get started

<p> Check the current kernel </p>

```bash
apt list -a | grep linux-image
```

<p> Install mainline kernel in your system </p>

```
sudo add-apt-repository ppa:cappelikan/ppa; sudo apt update; sudo apt install -y mainline
```
<p> open the mainline kernel and chose the kernel you want to install and install it, after that reboot your system, in reboot while the grub is prompt now navigate to the kernel you installed earlier. Not select the recovery mode</p>
<p> Now  check the old kernel images and headers and remove them(becareful in this step!) </p>

```bash
dpkg -l | grep linux-imgae
```

```bash
sudo apt remove <old_kernel_image>
```

```bash
dpkg -l | grep linux-headers
```

```bash
sudo apt remove <old_kernel_headers>
```

```bash
uname -r
```

<p> Reboot your system & your done!</p>

<br><p> This is a solution when your system did not shutdown properly or your system did not resppose while in suspend mode. Solution gathered from <a href='https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2031969'> here</a>. Its called a kernel downgrading. Currently, kernel 6.8 is facing the issue on Ubuntu 24.04 LTS, So, suggested version of kernel is 6.2 or 6.3</p>
