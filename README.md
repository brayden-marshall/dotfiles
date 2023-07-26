# Dotfiles

My personal config files.

## TODO:

- Add a rofi power menu, like one from here: https://github.com/adi1090x/rofi 
- Spice up the rofi launcher, again using inspiration from here: https://github.com/adi1090x/rofi 

## Issues:

- when connecting a laptop to an external display, then unplugging from that display to return to using the laptop's display, reloading bspwm_config.sh does not work

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
- i3lock-color (lock screen)
- xfce4-power-manager

- Applicatons:
    - neovim (editor)
    - rofi (app launcher and more)
    - feh (background wallpaper setter)
    - viewnior (image viewer)
    - evince (pdf viewer)
    - nm-applet (network manager, part of NetworkManager)
    - pulseaudio, pavucontrol, pasystray (audio management)
    - Hack (monospace font)
    - xdg-open (xdg-utils package)
    - filelight (graphical disk usage analyzer)

- Fonts:
    - Hack (monospace)
    - Roboto (sans-serif)

- Command Line Utilities:
    - ripgrep
    - tldr

## Setup on fresh install

- Link config files: Run the `create_symlinks.py` script to create symbolic links from the files/directories in the `$HOME` directory to the files/directories in this repository.

## Random Notes

- If tmux is bugging out and saying 'tmux-256color' : unknown terminal, install the `ncurses-terminal` (on ubuntu) package
- To get neovim to recognize the .vimrc, type :nvim-from-vim in a neovim instance and follow the instructions (shouldn't be necessary anymore)
