# terminal alpha
# xcompmgr -c &

# fr keyboard layout
setxkbmap -layout fr &

# wallpaper
feh --bg-scale ~/Downloads/wallpaper.jpg &

# status bar
~/dev/script/statusbar.sh &

# dwm
exec /usr/local/bin/dwm
