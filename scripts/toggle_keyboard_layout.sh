#!/bin/bash

layout=`$DOTFILES/scripts/get_keyboard_layout.sh`
echo $layout
if [[ $layout == 'dv' ]]; then
    setxkbmap us
elif [[ $layout == 'us' ]]; then
    setxkbmap ru
else
    setxkbmap dvorak
fi
