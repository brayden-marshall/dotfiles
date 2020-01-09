#=============================
# Oh My Zsh
#=============================

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh my zsh is not installed"
    echo "Go to https://github.com/robbyrussell/oh-my-zsh to install"
else
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="robbyrussell"
    plugins=()
    source $ZSH/oh-my-zsh.sh

    #=============================
    # Exports
    #=============================

    # PATH
    export PATH=$PATH
    # Path to your oh-my-zsh installation.
    #export ZSH="/home/brayden-marshall/.oh-my-zsh"

    # Makes stuff easier
    export ARCHFLAGS="-arch x86_64"
fi


#=============================
# Aliases
#=============================

if [ `command -v nvim` ]; then
    alias vim="nvim"
fi

if [ `command -v apt-get` ]; then
    alias esketit="sudo apt-get update && sudo apt-get upgrade"
fi

if [ `command -v exa` ]; then
    alias ls="exa"
fi

if [ -d "$HOME/Camosun/fall_2019/" ]; then
    alias school="$HOME/Camosun/winter_2020"
fi

if [ `command -v alacritty` ]; then
    alias alacritty="WIN_HIDPI_FACTOR=1.0 alacritty"
fi

# aliases for common applications so I don't have to remember the
# specific application names

if [ `command -v feh` ]; then
    alias image="feh"
fi

if [ `command -v evince` ]; then
    alias pdf="evince"
fi

if [ `command -v nm-applet` ]; then
    alias network="nm-applet"
fi

#=============================
# Options
#=============================

# Turn on case-sensitive completion
CASE_SENSITIVE="true"

unsetopt share_history
#=============================
# Functions
#=============================

chpwd() {
    ls
}

#=============================
# Misc.
#=============================

# set keyboard repeat rate and frequency
xset r rate 200 50
