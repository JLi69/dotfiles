#!/bin/sh

# Programs to autostart when loading into awesome

run()
{
	pid=$(pgrep $1)
	if [ -z $pid ]
	then
		$2 &
	fi
}

xrandr --output HDMI-2 --same-as HDMI-1 & # Mirror displays
run picom "picom --backend glx --vsync -b"
run nm-applet nm-applet
run cbatticon cbatticon
run package-update-indicator package-update-indicator
run volumeicon volumeicon
xautolock -time 6 -locker "i3lock -c 000000" &
feh --bg-fill $HOME/Pictures/wallpaper/space-wallpaper.png &

xmodmap ~/.xmodmap
