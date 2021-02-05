picom -bC --config ~/.config/picom/picom.conf
feh --randomize --bg-fill ~/Wallpapers
~/.scripts/xwinwrap.sh &
#dwmstatus 2>&1 >/dev/null &
export PATH="$PATH:~/git/flutter/bin"
#pcmanfm --desktop &
# adb kill-server
# adb start-server
dwmblocks &
exec dwm




