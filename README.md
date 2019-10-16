# Dotfiles

My personal Linux dotfiles and config files.

## Setup on fresh Ubuntu 18.04 install

- Link config files: Run `bash symlink.sh` to create symbolic links from the files in the `$HOME` directory to the files in this repository. This will link the following files:
    - vimrc (~/.vimrc)
    - profile (~/.profile)

- Terminal Theme: go to <https://github.com/Mayccoll/Gogh>, run the script, and choose the Monokai Dark theme.

- Font: Monospace Regular

## Random Notes

- If tmux is bugging out and saying 'tmux-256color' : unknown terminal, install the `ncurses-terminal` package
