# Dotfiles

My personal Linux dotfiles and config files.

## Setup on fresh install

- Link config files: Run the `create_symlinks.py` script to create symbolic links from the files/directories in the `$HOME` directory to the files/directories in this repository. This will link the following files:

- Terminal Theme: go to <https://github.com/Mayccoll/Gogh>, run the script, and choose the Monokai Dark theme.

- Font: Monospace Regular

## Random Notes

- If tmux is bugging out and saying 'tmux-256color' : unknown terminal, install the `ncurses-terminal` package
- To get neovim to recognize the .vimrc, type :nvim-from-vim in a neovim instance and follow the instructions
