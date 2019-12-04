#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --config-file="$HOME/dotfiles/polybar/polybar" --reload bar &
done
#polybar --config-file="$HOME/dotfiles/polybar/polybar" bar &
