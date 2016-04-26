"|
"| File     : ~/dotfiles/neobundle.vim
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 6 September 2013
"|

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \    },
  \ }


" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " vim-scripts repos
" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim'
" " Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" " gist repos
" NeoBundle 'gist:Shougo/656148', {
"       \ 'name': 'everything.vim',
"       \ 'script_type': 'plugin'}
" " Non git repos
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
"NeoBundle 'https://bitbucket.org/sjl/gundo.vim/'

" ADOPTED PLUGIN
" quick fixsigns (pan on the left with signs)
NeoBundle 'tomtom/quickfixsigns_vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-surround'

" python completion
" require pip install jedi
NeoBundle 'davidhalter/jedi-vim'

" air line plugin and a simple configuration in order to avoid patching font
NeoBundle 'bling/vim-airline'
" the separator used on the left side >
let g:airline_left_sep=''
" the separator used on the right side >
let g:airline_right_sep=''

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'godlygeek/tabular'

NeoBundle 'PotatoesMaster/i3-vim-syntax'

" sytax check
" require linter (https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers)
NeoBundle 'scrooloose/syntastic'

" Undo tree manager
NeoBundle 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>

"better commit view
NeoBundle 'rhysd/committia.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ON TEST PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" from kaze vimrc
NeoBundle 'mozfr/mozilla.vim'
NeoBundle 'jceb/vim-orgmode'
NeoBundle 'tpope/vim-speeddating'

NeoBundle 'Shougo/neocomplete.vim'

" Plugin: source outliner
NeoBundle 'h1mesuke/unite-outline'

NeoBundle 'tpope/vim-rails'

" Git wrapper
NeoBundle 'tpope/vim-fugitive'

" html5 and javascript
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/yajs.vim'

call neobundle#end()

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
