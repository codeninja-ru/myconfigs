#!/bin/bash

HOME="/home/vital"

setxkbmap -layout "us,ru" -option "grp:caps_toggle"
xcompgr &
feh --bg-scale "/home/vital/.xmonad/wall/wallpaper-430554.jpg" &
/home/vital/.dropbox-dist/dropboxd &
tint2 -c "$HOME/.xmonad/tint2rc" &
parcellite # clipboard
