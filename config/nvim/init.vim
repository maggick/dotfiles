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

colorscheme jellybeans
set background=dark
highlight ColorColumn ctermbg=red

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
set foldmethod=syntax
" only 80 columns
set textwidth=80
set colorcolumn=+0
set linebreak
set scrolloff=5       "set the number of lines to always display

" no highlight the search
set nohlsearch

" reopening a file at the same place than last time
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" escape on kj
imap kj <Esc>
" escape terminal mode on kj
:tnoremap kj <C-\><C-n>

"auto select last selection when indenting
vmap > >gv
vmap < <gv

" undo file
set undofile
set undodir=~/.config/nvim/undodir
" let my swap and backup files in .vim
set backupdir=~/.config/nvim//bak          " backup files
set directory=~/.convig/nvim/swp          " swap files
