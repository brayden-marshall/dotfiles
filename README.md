# Dotfiles

My personal Linux dotfiles and config files.

## Dependencies for full setup

#### Essentials
- bspwm
- sxhkd
- alacritty
- dmenu
- dunst
- polybar
- tmux
- neovim
- zsh

#### Applications
- feh (image viewer/wallpaper setter)
- evince (pdf viewer)

## Setup on fresh install

- Link config files: Run the `create_symlinks.py` script to create symbolic links from the files/directories in the `$HOME` directory to the files/directories in this repository.

## Random Notes

- If tmux is bugging out and saying 'tmux-256color' : unknown terminal, install the `ncurses-terminal` package
- To get neovim to recognize the .vimrc, type :nvim-from-vim in a neovim instance and follow the instructions (shouldn't be necessary anymore)
