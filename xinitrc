# terminal alpha
# xcompmgr -c &

# fr keyboard layout
setxkbmap -layout fr &

# set screen lock
lstime=900
xset -dpms
xset dpms $lstime $lstime $lstime
xss-lock slock &

# wallpaper
feh --bg-scale ~/opt/img/wallpaper.curr &

# status bar
~/dev/script/statusbar.sh &

# dwm
exec /usr/local/bin/dwm
