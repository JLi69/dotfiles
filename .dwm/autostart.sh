#!/bin/bash
#wallpaper
nitrogen --restore &
slstatus &
picom --backend glx --vsync -b --config $HOME/.dwm/picom.conf &
#system tray apps
nm-applet &
