# link vimrc
ln -s --backup=numbered ~/dotfiles/vim/vimrc ~/.vimrc

# link molokai colorscheme file
if [ ! -d "~/.vim/colors" ]
then
    mkdir -p ~/.vim/colors
fi
ln -s --backup=numbered ~/dotfiles/vim/colors/molokai.vim ~/.vim/colors/molokai.vim

# link .profile
ln -s --backup=numbered ~/dotfiles/profile ~/.profile

# link xkb mappings
ln -s --backup=numbered ~/dotfiles/xkb_mappings /usr/share/X11/xkb/symbols/pc
