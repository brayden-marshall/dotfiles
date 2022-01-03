#!/bin/sh

# make sure layout is set dvorak before screen is locked so that I don't have to hunt and peck my password
setxkbmap dvorak

# gruvbox theme color variables
black='#282828FF'
red='#cc241dFF'
green='#98971aFF'
yellow='#d79921FF'
blue='#458588FF'
magenta='#b16286FF'
cyan='#689d6aFF'
white='#a89984FF'

wrong_password_messages=(
    "Fetid!"
    "Foul!"
    "Cretin!"
    "Blasphemy!"
    "Heathen!"
    "Balderdash!"
)

size=${#wrong_password_messages[@]}
index=$(($RANDOM % $size))
wrong_password_message=${wrong_password_messages[$index]}

i3lock \
    -i $BACKGROUND_IMAGE_FILE\
    \
    --indicator \
    --clock \
    --ignore-empty-password \
    --tiling \
    --keylayout 2\
    \
    --insidever-color=$black\
    --insidewrong-color=$black\
    --inside-color=$black \
    \
    --ringver-color=$green\
    --ringwrong-color=$red\
    --ring-color=$white\
    --line-uses-ring\
    \
    --keyhl-color=$green\
    --bshl-color=$red\
    --separator-color=$green\
    --verif-color=$white \
    --layout-color=$white \
    --wrong-color=$white \
    --time-color=$white \
    --date-color=$white \
    \
    --verif-text="Verifying..." \
    --wrong-text=$wrong_password_message \
    --noinput-text="No Input" \
    --lock-text="Locking..." \
    \
    --radius 110 \
    --ring-width 12 \
