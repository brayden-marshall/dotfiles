#=============================
# Oh My Zsh
#=============================

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh my zsh is not installed"
    echo "Go to https://github.com/robbyrussell/oh-my-zsh to install"
    exit 1
fi

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

#=============================
# Aliases
#=============================

if [ -x `which nvim` ]; then
    alias vim="nvim"
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

school() {
    if [ -d ~/Camosun/fall_2019 ]; then
        cd ~/Camosun/fall_2019/
    fi
}

#=============================
# Misc.
#=============================

# set keyboard repeat rate and frequency
xset r rate 200 50
