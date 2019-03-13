# creating a backup of existing vimrc
if [ -e ~/.vimrc ]
then
    cp --backup=numbered ~/.vimrc ~/.vimrc.bak
fi
# link vimrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# creating a backup of existing molokai colorscheme file
if [ -e ~/.vim/colors/molokai.vim ]
then
    cp --backup=numbered ~/.vim/colors/molokai.vim ~/.vim/colors/molokai.vim.bak
fi
# link molokai colorscheme file
ln -sf ~/dotfiles/vim/colors/molokai.vim ~/.vim/colors/molokai.vim
