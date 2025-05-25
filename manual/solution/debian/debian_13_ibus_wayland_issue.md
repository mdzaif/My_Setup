## Problem Statement
Please unset QT_IM_MODULE and GTK_IM_MODULE environment variables and 'ibus-daemon --panel disable' should be executed as a child process of ibus-ui-gtk3 component. in debian 13 kde wayland

can not able to use ibus with other input method (for me avro bangla)

## Issue found

1. OS: Debian 13

2. DS: Wayland

3. DE: KDE

## Solution

1. open `.xinputrc` file.

```bash
open .xinputrc # open with kate 
```
<b>Note</b>: If `.xinputrc` not exists then create one.

```bash
touch .xinputrc
```


2. Copy paste those lines:

```config
#im-config(8) generated on Thu, 22 May 2025 11:22:44 +0600
#run_im ibus
# im-config signature: b3fdf2924744d9c963e6e6a6ab648dbe  -
# ~/.xinputrc
# Detect session type (Wayland or X11)
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    # For Wayland (KDE, GNOME, etc.), no need to force GTK_IM_MODULE or QT_IM_MODULE
    export XMODIFIERS="@im=ibus"
else
    # For X11 (XFCE, MATE, LXDE, etc.), force compatibility
    export GTK_IM_MODULE=ibus
    export QT_IM_MODULE=ibus
    export XMODIFIERS="@im=ibus"
fi
```

3. Then save it and reboot your system.

4. Open writer and check you can use the other input method via ibus.



# Consideration

If the ibus is a fresh intalled. Then it will give you a suggestion of this <b> system settings > keyboard > Virtual keyboard" then set "Ibus Wayland" </b>. The suggestion message use systemsettings5 and input methods then virutal keyboard. you just do which path I show. Then apply the change and then reboot your system. ok now you see the Problem statment. 
