""""""""""""""""""""""""""""""""""""""""""""""""""""
" File .vimrc of Matthieu Keller <keller.mdpa@gmail.com>
" created the 23.06.2010
" Last update : 15.10.2012
" version 1.5
" copyleft
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
"Set up for Bundle (plugins  manager)
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " be iMproved
filetype off              " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'python.vim'
Bundle 'colorscheme_template.vim'
Bundle 'The-NERD-tree'
Bundle 'snipMate'
Bundle 'c.vim'
Bundle 'project.tar.gz'
Bundle 'SuperTab-continued.'
Bundle 'molokai'
Bundle 'ruby.vim'
Bundle 'perl.vim'
Bundle 'java.vim'
Bundle 'css-color-preview'
Bundle 'html5.vim'
Bundle 'php.vim'
Bundle 'ctags.vim'

filetype plugin indent on " required! 

" compatiblity windowds ctrl x c v
source $VIMRUNTIME/mswin.vim
     

""""""""""""""""""""""""""""""""""""""""""""""""""
"Diverses options
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                                  " désactivation de la compatibilité avec vi
set background=dark                              " fond sombre
colorscheme desert
syntax enable                                     " activation de la coloration syntaxique
filetype on													  " lit le type de fichier
set mouse=a												     " Enable mouse usage (all modes)
set showmatch
set number                                      " numérotation des lignes
set autoindent                                    " indentation automatique avancée
set smartindent                                   " indentation plus intelligente
set laststatus=2                                  " ajoute une barre de status
set backspace=indent,eol,start                    " autorisation du retour arrière
set history=50                                    " historique de 50 commandes
set ruler                                         " affiche la position courante au sein du fichier
set showcmd        								  " Show (partial) command in status line.
set shiftwidth=4                                  " nombre de tabulation pour l'indentation
set tabstop=4					  				  			  " nombre d'espace pour une tabulation
set showmatch                                     " vérification présence ([ ou { à la frappe de )] ou }
filetype plugin indent on                         " détection automatique du type de fichier
autocmd FileType text setlocal textwidth=72       " les fichiers de type .txt sont limites à 72 caractères par ligne
set fileformats=unix,mac,dos                      " gestion des retours chariot en fonction du type de fichier
set foldcolumn=2                                  " repère visuel pour les folds
let Tlist_Ctags_Cmd = '/usr/bin/ctags'      	  " implémentation de ctags, nécessaire pour le plug in 'taglist'
set incsearch                                     " recherche incrémentale
set hlsearch                                      " surligne les résultats de la recherche
set ignorecase                                    " ne pas prendre en compte la casse pour les recherches
set guifont=Courier\ New\ 11
set nolist					  					  			  " on n'affiche pas les caractères non imprimables
set listchars=eol:¶,tab:..,trail:~		  		 	  " paramétrage des caractères non imprimables au cas où l'on souhaiterait les afficher

"set udf = undo persistant "to test
set ut=4200
"au cursorhold *.c update 						" save all c file if innactive for 42s 
"au cursorhold *.h update 						" save all h file if innactive for 42s 
"au cursorhold *.tex update 						" save all tex file if innactive for 42s 
"au cursorhold *.python update 					" save all tex file if innactive for 42s 
inoremap kj <Esc> 						" remap <Esc> on kj to escape insertion mod
" back to the line beggining with the 
noremap  <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap <Home> <C-o><Home>

" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" use change immediatly
autocmd! BufWritePost .vimrc source ~/.vimrc
autocmd! BufWritePost .bashrc source ~/.bashrc

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

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping in order to insert the current date 
""""""""""""""""""""""""""""""""""""""""""""""""""
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>

command! Wroot :w !sudo tee % ":wroot save file has root

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping in order to execute python file 
""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <F4> "<Esc>:w!<cr>:!python %<cr>"

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping for NERDTree and TlistToggle
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F7> :NERDTree<CR>


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
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

set undofile
set undodir=~/.vim/undodir

