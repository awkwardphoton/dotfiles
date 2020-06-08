#!/bin/bash
VAR=`date +"%H%M"`

if [[ 10#$VAR -gt 2000 || $VAR -le 0700 ]]
then
 pkill polybar
feh --bg-fill  ~/Pictures/Wallpapers/Night.jpg
sed -i 's/Mojave-Light/Mojave-Dark/' ~/.config/gtk-3.0/settings.ini
polybar mac-dark

 else
 	pkill polybar
feh --bg-fill  ~/Pictures/Wallpapers/Day.jpg
sed -i 's/Mojave-Dark/Mojave-Light/' ~/.config/gtk-3.0/settings.ini
polybar mac
fi
