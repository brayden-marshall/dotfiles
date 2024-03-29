#!/bin/bash
$DOTFILES/scripts/log.sh "Running bspwm_config.sh"

# monitor settings
bspc monitor -d 1 2 3 4 5 6 7 8

$DOTFILES/bspwm/normal_mode_config.sh

# split behaviour
bspc config split_ratio          0.50
bspc config borderless_monocle   true
bspc config gapless_monocle      true

# move pointer to focused monitor
bspc config pointer_follows_monitor true

# enable mouse?
bspc config click_to_focus       button1

bspc config remove_unplugged_monitors   true

# set keyboard layout mappings (must be set before sxhkd starts)
setxkbmap dvorak
setxkbmap -option caps:escape

# set touchpad settings if xinput (and libinput) is installed
touchpad_id=`$DOTFILES/scripts/get_touchpad_id.py`
if [ $? -eq 0 ]; then
    xinput --set-prop $touchpad_id "libinput Tapping Enabled" 1
    xinput --set-prop $touchpad_id "libinput Natural Scrolling Enabled" 1
    xinput --set-prop $touchpad_id "libinput Disable While Typing Enabled" 1
fi

# set key repeat rate
xset r rate 185 40
