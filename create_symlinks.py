#!/usr/bin/env python3

from pathlib import Path
import os
import subprocess

home_dir = os.getenv('HOME') + "/"

# all paths are relative to home directory
files_to_link = {
    "dotfiles/vim/vimrc": ".vimrc",
    "dotfiles/profile": ".profile",
    "dotfiles/zsh/zshrc": ".zshrc",
    "dotfiles/tmux.conf": ".tmux.conf",
    "dotfiles/alacritty.yml": ".alacritty.yml",
    "dotfiles/dunstrc": ".config/dunst/dunstrc",
    "dotfiles/xinitrc": ".xinitrc",
    "dotfiles/vim/init.vim": ".config/nvim/init.vim",
    "dotfiles/fehbg": ".fehbg",
}

dirs_to_link = {
    "dotfiles/vim/colors": ".vim/colors",
    "dotfiles/i3": ".i3",
    "dotfiles/i3": ".config/i3",
    "dotfiles/bspwm": ".config/bspwm",
    "dotfiles/sxhkd": ".config/sxhkd",
    "dotfiles/rofi": ".config/rofi",
    "dotfiles/compton": ".config/compton",
}

for key in files_to_link:
    src = home_dir + key
    dst = home_dir + files_to_link[key]
    # if file isn't already linked
    if not Path(dst).is_symlink():
        try:
            output = subprocess.check_output(
                ["ln", "-s", "--backup=numbered", src, dst]
            )
            if output != b'':
                print("Error: " + output)
        except:
            pass

for key in dirs_to_link:
    src = home_dir + key
    dst = home_dir + dirs_to_link[key]

    # if dir already exists as a non symlink, then rename it with a .bak suffix
    if Path(dst).is_dir() and not Path(dst).is_symlink():
        output = subprocess.check_output(
            ["mv", dst, f"{dst}.bak"]
        )
        if output != b'':
            print("Error: " + output)

    # if dir isn't already linked
    if not Path(dst).is_symlink():
        output = subprocess.check_output(
            ["ln", "-sf", src, dst]
        )
        if output != b'':
            print("Error: " + output)
