#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top-bar >$HOME/.config/polybar/polybar.log 2>&1 &
polybar bottom-bar >$HOME/.config/polybar/polybar.log 2>&1 &
# polybar album-image-bar >$HOME/.config/polybar/polybar.log 2>&1 &

echo 'Polybar launched...'
