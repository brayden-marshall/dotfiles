#!/bin/bash

layout=`$DOTFILES/scripts/get_keyboard_layout.sh`
echo $layout
if [[ $layout == 'dv' ]]; then
    setxkbmap us
else
    setxkbmap dvorak
fi
