"|
"| File     : ~/.config/nvim/init.vim
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 13 december 2015
"|

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
" only 80 columns
set textwidth=80
set colorcolumn=+0
set linebreak

" escape on kj
imap kj <Esc>
