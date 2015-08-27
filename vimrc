"|
"| File     : ~/.vimrc
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 23 june 2010
"| Updated  : the 16 February 2015
"|

set nocompatible          " be iMproved

" neobundle configuration
source ~/dotfiles/neobundles.vim
" macro autoload
source ~/dotfiles/macros.vim

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
set hidden                        " do not ask before closing a window

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
autocmd! BufWritePost vimrc source ~/dotfiles/vimrc
autocmd! BufWritePost .bashrc source ~/.bashrc
autocmd! BufWritePost bashrc source ~/dotfiles/bashrc


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
"Spell correction with vim7
"based on http://www.cs.swarthmore.edu/help/vim/vim7.html
if has("spell")
  " turn spelling on by default
  set spell

 " toggle spelling with F4 key
  map <F4> :set spell!<CR><Bar>:echo "Spell Check: " .  strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel ctermfg=black ctermbg=lightgray

  " limit it to just the top 10 items
  set sps=best,10
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
"Templates
""""""""""""""""""""""""""""""""""""""""""""""""""
" Color for templates
hi def link Todo TODO
syn keyword Todo TODO FIXME XXX DEBUG

" load the arduino template for pde files
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
" load the md file as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

augroup indents
  autocmd FileType ?akefile set noexpandtab
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType html,xhtml,javascript,css,c,cpp,python setlocal foldmethod=indent
augroup END

" REMAPPING
" ste the fols method
set foldmethod=indent
noremap <Tab> za
noremap <S-Tab> zA

" remap <Esc> on kj to escape insertion mod
inoremap kj <Esc>
imap <Home> <C-o><Home>

vmap > >gv
vmap < <gv

" undo file
set undofile
set undodir=~/.vim/undodir
" let my swap and backup files in .vim
set backupdir=~/.vim/bak          " backup files
set directory=~/.vim/swp          " swap files

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

