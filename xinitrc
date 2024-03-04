# terminal alpha
# xcompmgr -c &

# fr keyboard layout
setxkbmap -layout fr &

# set screen lock
lstime=60
xset -dpms
xset dpms $lstime $lstime $lstime
xss-lock slock &

# wallpaper
feh --bg-scale ~/opt/img/wallpaper.jpg &

# status bar
~/dev/script/statusbar.sh &

# dwm
exec /usr/local/bin/dwm
