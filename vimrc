""""""""""""""""""""""""""""""""""""""""""""""""""""
" File .vimrc of Matthieu Keller <keller.mdpa@gmail.com>
" created the 23.06.2010
" Last update : 07.01.2013
" version 1.5
" copyleft
""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible          " be iMproved
filetype off              " required!

""""""""""""""""""""""""""""""""""""""""""""""""""
"Diverses options
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                                  " désactivation de la compatibilité avec vi
set background=dark                              " fond sombre
colorscheme desert
syntax enable                                     " activation de la coloration syntaxique
filetype on
set number                                      " numérotation des lignes
set history=50                                    " historique de 50 commandes
set ruler                                         " affiche la position courante au sein du fichier
set showcmd       " Show (partial) command in status line.
set shiftwidth=4                                  " nombre de tabulation pour l'indentation
set tabstop=4  " nombre d'espace pour une tabulation
set softtabstop=4
set showmatch                                     " vérification présence ([ ou { à la frappe de )] ou }
set textwidth=80
set colorcolumn=+0
set fileformats=unix,mac,dos                      " gestion des retours chariot en fonction du type de fichier
set foldcolumn=2                                  " repère visuel pour les folds
set incsearch                                     " recherche incrémentale
set hlsearch                                      " surligne les résultats de la recherche
set ignorecase                                    " ne pas prendre en compte la casse pour les recherches
set listchars=trail:·,nbsp:·,tab:▸\ ,extends:»,precedes:«,
set list

" remap <Esc> on kj to escape insertion mod
inoremap kj <Esc>
imap <Home> <C-o><Home>

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
set spellsuggest=5                                   " on affiche uniquement les 5 premières propositions 
autocmd BufEnter *.txt set spell                     " correction orthographique dans les fichiers textes
autocmd BufEnter *.txt set spelllang=en              " correction orthographique dans les fichiers textes

map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=en<CR>"
map <silent> <S-F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"

""""""""""""""""""""""""""""""""""""""""""""""""""
"Templates
""""""""""""""""""""""""""""""""""""""""""""""""""
" Color for templates
hi def link Todo TODO
syn keyword Todo TODO FIXME XXX DEBUG

vmap > >gv
vmap < <gv

set foldmethod=indent
noremap <Tab> za
noremap <S-Tab> zA

" Disable arrows in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" undo file
set undofile
set undodir=~/.vim/undodir

