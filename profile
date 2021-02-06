#!/bin/bash
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# if go is installed, set the GOPATH env variable to $HOME/kitchen-sink/go
if [ `command -v go` ]; then
    go env -w GOPATH="$HOME/kitchen-sink/go"
fi

# environment variables
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/.cargo/bin:$HOME/dotnet/tools"
export XDG_CONFIG_HOME="$HOME/.config"
export DOTFILES="$HOME/dotfiles"

export BSPWM_RICE_MODE_TMP_FILE="/tmp/bspwm_rice_mode"

# gruvbox color variables for various use in scripts
export THEME_BLACK="#282828"
export THEME_GREY="#EBDBB2"
export THEME_RED="#cc241d"
export THEME_GREEN="#98971a"
export THEME_YELLOW="#d79921"
export THEME_BLUE="#458588"
export THEME_MAGENTA="#b16286"
export THEME_CYAN="#689d6a"
export THEME_WHITE="#a89984"

# set background image
background_image_file="$DOTFILES/wallpapers/naisu.png"
if [ -f $background_image_file ]; then
    #feh --bg-fill $background_image_file
    export BACKGROUND_IMAGE_FILE=$background_image_file
fi

# set alternate background image
rice_mode_background_image_file="$DOTFILES/wallpapers/glitch_moon.png"
if [ -f $background_image_file ]; then
    #feh --bg-fill $background_image_file
    export RICE_MODE_BACKGROUND_IMAGE_FILE=$rice_mode_background_image_file
fi

# alacritty env variable for consistent font size
export WINIT_HIDPI_FACTOR=1
export WINIT_X11_SCALE_FACTOR=1
