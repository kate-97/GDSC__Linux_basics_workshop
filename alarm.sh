#!/bin/sh

#usage alarm 20:20
h=$(echo $1 | cut -d ':' -f 1)
m=$(echo $1 | cut -d ':' -f 2)

h2=$(date +"%-H")
h2=$((h - h2 + 23))
m2=$(date +"%-M")
m2=$((m - m2 + 60))

if [ $m2 -gt 59 ]
then
    h2=$((h2+1))
    m2=$((m2-60))
fi

if [ $h2 -gt 23 ]
then
    h2=$((h2-24))
fi

printf "Alarm will be at %02d:%02d \n" $h $m
printf "You have %02d:%02dh to sleep\n" $h2 $m2

s=$((h2*60*60+m2*60))

sleep $s && mpv https://www.youtube.com/watch?v=S926hszLr58
