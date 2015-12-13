source ~/.config/nvim/plugins.vim

" User Interface settings
set number              " show absolute line numbers
set ruler               " display cursor position in the status line

colorscheme solarized
set background=dark

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

" escape on kj
imap kj <Esc>
