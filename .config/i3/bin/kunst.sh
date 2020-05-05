#!/usr/bin/env bash
IFS=$'\n'

if [ -z $(pidof sxiv) ]; then
  kunst &
fi

while [ -n $(pidof sxiv) ]; do
  if [ -z $(pidof rofi) ]; then
    killall sxiv
    PIDS=$(ps -aux | grep "bash /usr/bin/kunst" | cut -d " " -f 5)
    for PID in $PIDS; do
      kill $PID
    done
    exit
  fi
  sleep .1
done
