#!/usr/bin/bash

echo -n " "

# cmus
status=$(cmus-remote -Q | grep "status " | cut -d ' ' -f 2)
if [ "$status" = "playing" ]; then
    echo -n ">  "
else
    echo -n "=  "
fi
echo -n $(cmus-remote -Q | grep "tag artist " | cut -d ' ' -f 3-)
echo -n " - "
echo -n $(cmus-remote -Q | grep "tag title " | cut -d ' ' -f 3-)
echo -n " | "

# volume
echo -n $(amixer sget Master | grep % | cut -d '[' -f 2 | cut -d ']' -f 1)
echo -n " | "

# brightness
echo -n $(($(cat /sys/class/backlight/*/brightness) *100 / $(cat /sys/class/backlight/*/max_brightness) ))
echo -n "% | "

# cpu
echo -n "$(top -b -d 0.24 -n 2 -p 1 | fgrep "Cpu(s)" | tail -1 | awk -F'id,' -v prefix="$prefix" '{ split($1, vs, ","); v=vs[length(vs)]; sub("%", "", v); printf "%s%4.1f%%\n", prefix, 100 - v }') "
echo -n $(sensors | grep Package | cut -d ' ' -f 5 | cut -d '+' -f 2)
echo -n " | "

# network
echo -n $(nmcli | grep ' connected ' | cut -d ' ' -f 4-)
echo -n " $(nmcli | grep inet4 | cut -d ' ' -f 2 | cut -d '/' -f 1)"
# ping
# echo -n " $(ping -c 1 8.8.8.8 | grep '64 bytes' | cut -d '=' -f 4)"

echo -n " | "

# battery
echo -n $(cat /sys/class/power_supply/BAT0/capacity)
echo -n "% "
echo -n $(cat /sys/class/power_supply/BAT0/status)
echo -n " | "

# time and date
echo -n $(date +"%a, %d.%m.%Y. %H:%M:%S")
