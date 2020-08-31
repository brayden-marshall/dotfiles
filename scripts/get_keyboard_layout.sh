#!/bin/bash

layout=`setxkbmap -query | grep layout | cut -d":" -f2 | tr -d '[:space:]'`
if [[ $layout == "dvorak" ]]; then
    layout="dv"
fi
echo $layout
