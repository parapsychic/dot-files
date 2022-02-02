#! /bin/bash
#lxsession &
#picom &
#dunst &
#why here? Because it's easier to edit it here
/home/parapsychic/.bin/bat_notfication &
#dwmblocks &
nitrogen --restore &
### Uncomment only ONE of the following ###
# uncomment this line to restore last saved wallpaper...
#xargs xwallpaper --stretch < ~/.xwallpaper &
# ...or uncomment this line to set a random wallpaper on login
# find /usr/share/backgrounds/dtos-backgrounds/ -type f | shuf -n 1 | xargs xwallpaper --stretch &


dt(){
    dte=$(date "+%a %b %d %H:%M %Y")
    echo -e "$dte"
}

bat(){
    batstat=$(cat /sys/class/power_supply/BAT0/capacity) 
    batcharge=$(cat /sys/class/power_supply/BAT0/status) 
    echo -e "$batstat% $batcharge"
}

rootLeft(){
    rem=$(df -h | grep -w / | awk '{print $5}')
    echo $rem
}

while true
do
    xsetroot -name " $(bat) | $(dt) | / $(rootLeft) | parapsychic "
    sleep 10s #update time every minute
done &

