#! /bin/bash
#lxsession &
picom -cCGfF &
#dunst &
#why here? Because it's easier to edit it here
/home/parapsychic/.bin/bat_notfication &
#dwmblocks &
nitrogen --restore &
discord --enable-gpu-rasterization &
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
    if [ $batcharge = "Charging" ] || [ $batcharge = "Unknown" ] 
    then
        baticon=
    elif [[ $batstat -ge 90 ]]
    then
        baticon=
    elif [[ $batstat -ge 50 ]]
    then
            baticon=
    elif [[ $batstat -ge 30 ]]
    then
        baticon=
    else
        baticon=
    fi

    if [ $batcharge = "Unknown" ]
    then
        batcharge="Limiting"
    fi
    echo -e "$baticon $batstat% $batcharge"
}

rootLeft(){
    rem=$(df -h | grep -w / | awk '{print $5}')
    echo $rem
}

vol(){
    vollvl=$(pactl list sinks | grep -o -P '.{0,5}%' | head -n1 | grep -Eo '[0-9]{1,4}')
    if [[ $vollvl -ge 150 ]]
    then
        pactl set-sink-volume 0 150%
    fi
    echo $vollvl
}

while true
do
    xsetroot -name "$(bat) | 墳 $(vol) | $(dt) | / $(rootLeft) | parapsychic "
    sleep 1s #update time every minute
done &

