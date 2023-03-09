#!/bin/sh

# Programs to autostart when loading into awesome

run()
{
	pid=$(pgrep $1)
	if [ -z $pid ]
	then
		$1 &
	fi
}

xrandr --output HDMI-2 --same-as HDMI-1 # Mirror displays
picom --backend glx --vsync -b
run nm-applet
run cbatticon
run package-update-indicator
xautolock -time 6 -locker slock
