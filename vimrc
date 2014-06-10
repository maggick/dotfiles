"|
"| File     : ~/.vimrc
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 23 june 2010
"| Updated  : the 31 may 2013
"|

set nocompatible          " be iMproved
"filetype off              " required!

" Vundle and bundles configuration
source ~/dotfiles/neobundles.vim

" cra.cim setup
let g:NbRemainingCP = 0

""""""""""""""""""""""""""""""""""""""""""""""""""
"Diverses options
""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark               " fond sombre
colorscheme solarized
syntax enable                     " activation de la coloration syntaxique
filetype on
set encoding=utf-8
set number                        " numérotation des lignes
set history=500                    " historique de 50 commandes
set ruler
set showcmd                       " Show (partial) command in status line.
set shiftwidth=2                  " nombre de tabulation pour l'indentation
set tabstop=2                     " nombre d'espace pour une tabulation
set expandtab                     " use space instead of tab
set softtabstop=2
set showmatch                     " vérification présence ([ ou { à la frappe de )] ou }
set textwidth=80
set colorcolumn=+0
set nowrap                        " in order to get beautiful line
set linebreak
set fileformats=unix,mac,dos      " gestion des retours chariot en fonction du type de fichier
set foldcolumn=2                  " repère visuel pour les folds
set incsearch                     " recherche incrémentale
set hlsearch                      " surligne les résultats de la recherche
set ignorecase                    " ne pas prendre en compte la casse pour les recherches
set listchars=trail:·,nbsp:¤,tab:▸\ ,extends:»,precedes:«,

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set list
set laststatus=2

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

command! Wroot :w !sudo tee % ":wroot save file has root

""""""""""""""""""""""""""""""""""""""""""""""""""
"Correction orthographique
"Liste des propositions par CTRL-X_s
""""""""""""""""""""""""""""""""""""""""""""""""""
set dictionary+=/usr/share/dict/american-english
" on affiche uniquement les 5 premières propositions
set spellsuggest=5
" correction orthographique dans les fichiers textes
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=en

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
" Disable arrows in normal mode
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" remap <Esc> on kj to escape insertion mod
inoremap kj <Esc>
imap <Home> <C-o><Home>

" undo file
set undofile
set undodir=~/.vim/undodir

" use the common clipboard as default register
set clipboard=unnamedplus

if !has('gui_running')
      set t_Co=256
endif

set wildmenu
set wildmode=longest,full

