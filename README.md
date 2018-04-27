## Only for Fedora / Centos

# ![](ss.png)

# Details

| Item | Value |
| :--- | :---- |
| OS | Fedora 27 (Server Edition) |
| Fav WM(s) | i3 |
| Shell | bash |
| Font | Sans 8 |
| Terminal | URxvt|
| Launcher | dmenu |
| Bar | i3bar |
| Wallpaper | nitrogen |
| Lock Screen | i3lock|
| Logout / Shutdown | i3bar |
| Volume Control | alsamixer |
| Brightness Controller | xbacklight |
| Network Applet | nmtui |
| Bluetooth Applet | blueberry |
| Text Editor | vim, nvim + tmux |

# Step 1
## Fedora update:
$ fu
## Centos update:
$ cu

# Step 2
## Install RPMFusion for fedora
$ install-rpmfusion-fedora
## Install RPMFusion for centos
$ install-rpmfusion-centos

# Step 3
## Install basic for fedora
$ install-basic-fedora
## Install basic for centos
$ install-basic-fedora

# Step 4 (optional, GUI apps : firefox, gimp, inkscape, etc)
## Install basic for fedora (GUI APP)
$ install-basic-fedora2
## Install basic for centos (GUI APP)
$ install-basic-centos2

# Step 5
## Install i3-wm for fedora
$ install-i3-fedora
## Install i3-wm for centos
$ install-i3-centos

# Step 6
## Install codec for fedora
$ install-codec-fedora
## Install codec for centos
$ install-codec-centos

## ===================================
## Fedora install, ex install gimp:
$ fi gimp

## Fedora remove, ex install gimp:
$ fr gimp

## Fedora search, ex install gimp:
$ fs gimp

## Fedora clean
$ fc

## Install web server basic
$ install-webserver-fedora

## open config .basrc at ~ (more info alias)
$ vimbr

## open config .Xresource at ~
$ vimxr

## open config i3 at ~/.i3/
$ vimi3

## open config i3status at ~/.i3/
$ vimi3st
