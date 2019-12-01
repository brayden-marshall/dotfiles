#!/usr/bin/env python3

from pathlib import Path
import os
import subprocess

home_dir = os.getenv('HOME') + "/"

files_to_link = {
    "dotfiles/vim/vimrc": ".vimrc",
    "dotfiles/profile": ".profile",
    "dotfiles/zshrc": ".zshrc",
    "dotfiles/tmux.conf": ".tmux.conf",
}

dirs_to_link = {
    "dotfiles/vim/colors": ".vim/colors",
    "dotfiles/i3": ".i3",
}

for key in files_to_link:
    # if file isn't already linked
    if not Path(home_dir + files_to_link[key]).is_symlink():
        output = subprocess.check_output(
            ["ln", "-s", "--backup=numbered", home_dir + key, home_dir + files_to_link[key]]
        )
        print(output)

for key in dirs_to_link:
    # if dir isn't already linked
    if not Path(home_dir + dirs_to_link[key]).is_symlink():
        output = subprocess.check_output(
            ["ln", "-sf", home_dir + key, home_dir + dirs_to_link[key]]
        )
        print(output)
