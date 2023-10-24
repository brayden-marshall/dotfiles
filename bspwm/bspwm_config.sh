#!/bin/bash
$DOTFILES/scripts/log.sh "Running bspwm_config.sh"

# monitor settings
#bspc monitor -d I II III IV V VI VII VIII IX X
if [[ `xrandr -q | grep ' connected' | cut -d ' ' -f1 | grep HDMI2` == '' ]]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal
    bspc monitor eDP1 -d 1 2 3 4 5
else
    xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal
    xrandr --output HDMI2 --brightness 0.8
    xrandr --output eDP1 --off
        #--output eDP1 --mode 1920x1080 --rotate normal --left-of HDMI2
    bspc monitor HDMI2 -d 1 2 3 4 5
    #bspc monitor eDP1 -d 6 7 8 9 10
fi

$DOTFILES/bspwm/normal_mode_config.sh

# split behaviour
bspc config split_ratio          0.50
bspc config borderless_monocle   false
bspc config gapless_monocle      false

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
