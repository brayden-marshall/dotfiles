#!/bin/sh

# link vimrc
ln -s --backup=numbered ~/dotfiles/vim/vimrc ~/.vimrc

# link .profile
ln -s --backup=numbered ~/dotfiles/profile ~/.profile

# link zshrc
ln -s --backup=numbered ~/dotfiles/zshrc ~/.zshrc

# link tmux.conf
ln -s --backup=numbered ~/dotfiles/tmux.conf ~/.tmux.conf

# link vim colors directory
ln -sf ~/dotfiles/vim/colors ~/.vim/colors
