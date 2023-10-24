#!/bin/bash

# insertion scheme
bspc config automatic_scheme alternate

# color scheme
bspc config normal_border_color     $THEME_WHITE
bspc config active_border_color     $THEME_MAGENTA
bspc config focused_border_color    $THEME_GREEN

# window settings
bspc config border_width        2
bspc config window_gap          0
bspc config swallow_first_click false

# monitor settings
bspc config remove_disable_monitors true
bspc config remove_unplugged_monitors true
