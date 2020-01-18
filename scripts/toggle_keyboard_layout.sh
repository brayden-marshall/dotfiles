#!/bin/bash

layout=`$DOTFILES/scripts/get_keyboard_layout.sh`
if [ $layout == 'dvorak' ]; then
    setxkbmap us
else
    setxkbmap dvorak
fi
