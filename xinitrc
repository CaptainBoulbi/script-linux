# terminal alpha
# xcompmgr -c &

# fr keyboard layout
setxkbmap -layout fr &

# wallpaper
feh --bg-scale ~/opt/img/wallpaper.jpg &

# status bar
~/dev/script/statusbar.sh &

# dwm
exec /usr/local/bin/dwm
