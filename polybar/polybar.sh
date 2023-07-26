#!/usr/bin/env bash
$DOTFILES/scripts/log.sh "Running polybar.sh"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config-file="$DOTFILES/polybar/polybar" --reload bar &
