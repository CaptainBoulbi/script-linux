#!/bin/bash

status_bar(){
    wifi=$(/usr/sbin/iwgetid -r)
    date=$(date +"%a %d %b. %Y")
    hour=$(date +"%H:%M")
    battery=$(upower -i $(upower -e | grep BAT) | grep percentage | sed "s/ //g" | cut -d ":" -f2)
    battery_state=$(upower -i $(upower -e | grep BAT) | grep state | sed "s/ //g" | cut -d':' -f2)
    sound_card=$(cat ~/.config/sound_card)
    volume=$(amixer get $sound_card | grep % | head -n 1 | cut -f7 -d' ' | sed "s/\[\|\]//g")
    brightness=$(~/dev/script/luminosity get)

    xsetroot -name "| res: $wifi | lum: $brightness | vol: $volume [$sound_card] | bat: $battery [$battery_state] | $date | $hour |"
}

if [[ $1 == "once" ]]; then
    status_bar
else
    while true; do
        status_bar
        sleep 15
    done
fi
