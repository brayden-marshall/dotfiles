#!/bin/bash

layout=`setxkbmap -query | grep layout | cut -d":" -f2 | tr -d '[:space:]'`
variant=`setxkbmap -query | grep variant | cut -d":" -f2 | tr -d '[:space:]'`
if [[ $variant == "dvorak" ]]; then
    layout="dv"
fi
echo $layout
