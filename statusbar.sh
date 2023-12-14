#!/bin/bash

while true; do

date=$(date +"%a %d %b. %Y")
hour=$(date +"%H:%M")
battery=$(upower -i $(upower -e | grep BAT) | grep percentage | sed "s/ //g" | cut -d ":" -f2)
volume=$(amixer get Master | grep dB | head -n 1 | cut -f7 -d' ' | sed "s/\[\|\]//g")
brightness=$(echo "100 * $(xrandr --prop --verbose | grep -A10 " connected" | grep Brightness | cut -f2 -d' ')" | bc | sed "s/\.[0-9]$/%/g")

xsetroot -name "| lum: $brightness | vol: $volume | bat: $battery | $date | $hour |"

sleep 15
done
