# Dotfiles

My personal Linux config files.

## Dependencies

- bspwm
- sxhkd
- compton/picom (X compositor)
- alacritty
- dunst
- polybar
- tmux
- zsh
- xss-lock (hooks to lock on suspend)
- i3lock (lock screen)
- xfce4-power-manager

- Applicatons:
    - neovim (editor)
    - rofi (app launcher and more)
    - feh (image viewer/wallpaper setter)
    - evince (pdf viewer)
    - nm-applet (network manager, part of NetworkManager)

## Setup on fresh install

- Link config files: Run the `create_symlinks.py` script to create symbolic links from the files/directories in the `$HOME` directory to the files/directories in this repository.

## Random Notes

- If tmux is bugging out and saying 'tmux-256color' : unknown terminal, install the `ncurses-terminal` (on ubuntu) package
- To get neovim to recognize the .vimrc, type :nvim-from-vim in a neovim instance and follow the instructions (shouldn't be necessary anymore)
