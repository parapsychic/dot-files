#! /bin/bash
#lxsession &
picom -cCGfF &
#dunst &
#why here? Because it's easier to edit it here
/home/parapsychic/.bin/bat_notfication &
#dwmblocks &
redshift -l 10:74 &
nitrogen --restore &
discord --enable-gpu-rasterization &
#dwmblocks &
conky &
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
    volmute=$(pactl get-sink-mute 0 | grep -o yes)
    volicon="墳"
    if [ $volmute = "yes" ]
    then
        volicon="婢"
        vollvl="MUTED"
    fi
    if [[ $vollvl -ge 150 ]]
    then
        pactl set-sink-volume 0 150%
    fi
    echo $volicon $vollvl
}

network(){
    ssid=$(iwgetid -r)
    if [ '$ssid' != "" ]
    then
        echo 直 $ssid
    else
        echo "睊 Not Connected"
    fi
}


while true
do
    xsetroot -name "$(bat) | $(network) |  $(vol) |   $(dt) | / $(rootLeft) | parapsychic "
    sleep 1s #update time every second
done &

