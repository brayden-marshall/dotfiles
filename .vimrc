set nocompatible
syntax enable
syntax on
colorscheme molokai
set termguicolors
let g:molokai_original=1
set nohlsearch
set background=dark
packloadall
silent! helptags ALL
let python_highlight_all=1
let mapleader=" "

set formatoptions=cql

" VIM-PLUG SECTION "
" add plugins after call plug#begin() in form "
" Plug 'path/to/plugin' "

call plug#begin('~/.vim/plugged')

Plug 'vim-python/python-syntax'
Plug 'scrooloose/nerdtree'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-classpath'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
"Plug 'luochen1990/rainbow'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'fatih/vim-go'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'OrangeT/vim-csharp'

call plug#end()

" rainbow plugin settings

"let g:rainbow_active = 1

" vimwiki stuff
" Run multiple wikis
let g:vimwiki_list = [
                       \{'path': '~/Documents/vimwiki/'}
                    \]

au BufRead,BufNewFile *.wiki set filetype=vimwiki
":autocmd FileType vimwiki map d :VimwikiMakeDiaryNote

" vim-airline   vim-airline-themes"

let g:airline_theme='base16_monokai'

" rainbowparentheses.vim settings"

"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" vim-python/python-syntax settings override "

let g:python_highlight_all=1
let g:python_highlight_space_errors=0

" tab settings
set shiftwidth=4
set softtabstop=4
set expandtab

au BufNewFile,BufRead *.html
    \ set shiftwidth=2 |
    \ set tabstop=2 |
    \ set softtabstop=2

" PEP 8 Style guide for python files "

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" golang specific settings
au BufNewFile,BufRead *.go
    \ set tabstop=4 |
    \ set textwidth=99 |
    \ set noexpandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set filetype=go

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on



"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
"set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number
set relativenumber

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
"set pastetoggle=<F11>


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
"map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
"nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
