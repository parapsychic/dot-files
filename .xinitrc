if [[ -f /usr/bin/prime-offload ]]; then
    /usr/bin/prime-offload
fi

exec dwm

if [[ -f /usr/bin/prime-switch ]]; then
    doas /usr/bin/prime-switch
fi
