#!/bin/sh

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
    --insidevercolor=$black\
    --insidewrongcolor=$black\
    --insidecolor=$black \
    \
    --ringvercolor=$green\
    --ringwrongcolor=$red\
    --ringcolor=$white\
    --line-uses-ring\
    \
    --keyhlcolor=$green\
    --bshlcolor=$red\
    --separatorcolor=$green\
    --verifcolor=$white \
    --layoutcolor=$white \
    --wrongcolor=$white \
    --timecolor=$white \
    --datecolor=$white \
    \
    --veriftext="Verifying..." \
    --wrongtext=$wrong_password_message \
    --noinputtext="No Input" \
    --locktext="Locking..." \
    \
    --radius 110 \
    --ring-width 12 \
