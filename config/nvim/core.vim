"source ~/.config/nvim/plugins.vim
call plug#begin('~/.config/nvim/bundle/')
  Plug 'tpope/vim-sensible'
  Plug 'fabi1cazenave/kalahari.vim'
call plug#end() " add plugins to &runtimepath and enable syntax highlighting

" User Interface settings
set number              " show absolute line numbers
set ruler               " display cursor position in the status line
colorscheme kalahari    " `desert` variant (mostly to test the plugin manager)

" show tabs / nbsp / trailing spaces
set list listchars=nbsp:¤,tab:··,trail:¤,extends:▶,precedes:◀

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
