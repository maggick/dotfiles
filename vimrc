"|
"| File     : ~/.vimrc
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 23 june 2010
"| Updated  : the 10 june 2014
"|

set nocompatible          " be iMproved

" neobundle configuration
source ~/dotfiles/neobundles.vim

" cra.cim setup
let g:NbRemainingCP = 0

""""""""""""""""""""""""""""""""""""""""""""""""""
"Misc
""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark               " dark background
colorscheme solarized
syntax enable                     " syntax color
filetype on
set encoding=utf-8
set number                        " lines numerotation
set history=500                   " 500 commands history
set ruler
set showmatch
set textwidth=80
set colorcolumn=+0
set nowrap                        " in order to get beautiful line
set linebreak
set fileformats=unix,mac,dos
set foldcolumn=2
set incsearch
set hlsearch
set ignorecase
set listchars=trail:·,nbsp:¤,tab:▸\ ,extends:»,precedes:«,
set list
set laststatus=2

" Identation 2 tabs but for python then 4 tabs
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" use change immediatly
autocmd! BufWritePost .vimrc source ~/.vimrc
autocmd! BufWritePost vimrc source ~/vimrc
autocmd! BufWritePost .bashrc source ~/.bashrc
autocmd! BufWritePost bashrc source ~/bashrc


"|    Ranger as Vim file manager                                           <<<
""|----------------------------------------------------------------------------
" http://ornicar.github.com/2011/02/12/ranger-as-vim-file-manager.html
function! Ranger()
    "let tmpfile = '/tmp/chosen'
    "silent !ranger %:h --choosefile=/tmp/chosen
    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
    silent exec '!ranger --choosefile='.tmpfile
    if filereadable(tmpfile)
        exec 'edit '. system('cat '.tmpfile)
        call delete(tmpfile)
    endif
    redraw!
endfunction
noremap <silent> <Esc>e :call Ranger()<CR>

" in order to save with a sudo
command! Wroot :w !sudo tee % ":wroot save file has root

""""""""""""""""""""""""""""""""""""""""""""""""""
"Spell correction
"complet with CTRL-X_s
""""""""""""""""""""""""""""""""""""""""""""""""""
set dictionary+=/usr/share/dict/american-english
set spellsuggest=5            " only display the fivest proposal

" key to activat spell correction
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=en<CR>"
map <silent> <S-F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"

""""""""""""""""""""""""""""""""""""""""""""""""""
"Templates
""""""""""""""""""""""""""""""""""""""""""""""""""
" Color for templates
hi def link Todo TODO
syn keyword Todo TODO FIXME XXX DEBUG

" load the arduino template for pde files
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

vmap > >gv
vmap < <gv

" REMAPPING
" ste the fols method
set foldmethod=indent
noremap <Tab> za
noremap <S-Tab> zA

" remap <Esc> on kj to escape insertion mod
inoremap kj <Esc>
imap <Home> <C-o><Home>

" undo file
set undofile
set undodir=~/.vim/undodir

" use the common clipboard as default register
set clipboard=unnamedplus

" be beautiful!
if !has('gui_running')
      set t_Co=256
endif

" have a beautiful menu!
set wildmenu
set wildmode=longest,full
if exists ("&wildignorecase")
  set wildignorecase
endif
set showfulltag

