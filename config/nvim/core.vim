"|
"| File     : ~/.config/nvim/core.vim
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 13 december 2015
"|
"|This is a simple configuration file for neovim for debugging purpose
"|

call plug#begin('~/.config/nvim/bundle/')
  Plug 'tpope/vim-sensible'
  Plug 'altercation/vim-colors-solarized'
call plug#end() " add plugins to &runtimepath and enable syntax highlighting

" User Interface settings
set number              " show absolute line numbers
set ruler               " display cursor position in the status line
colorscheme kalahari    " `desert` variant (mostly to test the plugin manager)

" show tabs / nbsp / trailing spaces
set list listchars=nbsp:¤,tab:··,trail:¤,extends:▶,precedes:◀

" undo file
set undofile
set undodir=~/.config/nvim/undodir
set backupdir=~/.config/nvim/bak
set directory=~/.config/nvim/swp

" two-space indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set cindent
set smartindent
set shiftround
set autoindent
set foldmethod=indent

" I’m afraid I can’t live without this one… :-/
imap kj <Esc>
