#!/bin/sh

if ! mpc status | rg -q "playing"; then
  echo "$(mpc -f "%albumartist% - %title%" current)"
  # echo ""
else
  echo "$(mpc -f "%albumartist% - %title%" current)"
  # echo ""
fi
