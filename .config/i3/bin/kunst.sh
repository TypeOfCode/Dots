#!/usr/bin/env bash
# IFS=$'\n'

if [ -z $(pidof sxiv) ]; then
  kunst &
fi

while [ -n $(pidof sxiv) ]; do
  if [ -z $(pidof rofi) ]; then
    killall sxiv
    PIDS=$(echo $(ps -C bash --format "pid cmd" | rg "bash /usr/bin/kunst" | rg -o "[\d]*"))
    for PID in $PIDS; do
      kill $PID
    done
    exit
  fi
  sleep .1
done
