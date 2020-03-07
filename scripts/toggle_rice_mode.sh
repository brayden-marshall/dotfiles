#!/usr/bin/bash

# hack to work with sxhkd. this is a silly script so I don't
# really care about making this better
if [[ $BSPWM_RICE_MODE_TMP_FILE == "" ]]; then
    BSPWM_RICE_MODE_TMP_FILE="/tmp/bspwm_rice_mode"
fi

# toggle RICE_MODE
RICE_MODE=`cat $BSPWM_RICE_MODE_TMP_FILE`
if [[ $RICE_MODE == "0" ]]; then
    $DOTFILES/bspwm/rice_mode_config.sh
    RICE_MODE="1"

    COMPTON_CONFIG_PATH=$DOTFILES/compton/rice_mode_compton.conf
else
    $DOTFILES/bspwm/bspwm_config.sh
    RICE_MODE="0"

    COMPTON_CONFIG_PATH=$DOTFILES/compton/compton.conf
fi

# restart compton with new config
killall -q compton
compton --config $COMPTON_CONFIG_PATH -b

# toggle rice mode flag
echo $RICE_MODE > $BSPWM_RICE_MODE_TMP_FILE
