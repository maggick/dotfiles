if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
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

" air line plugin and a simple configuration in order to avoid patching font
NeoBundle 'bling/vim-airline'
" the separator used on the left side >
let g:airline_left_sep=''
" the separator used on the right side >
let g:airline_right_sep=''

NeoBundle 'altercation/vim-colors-solarized'

" ON TEST PLUGINS
" year calendar in order to organize holidays
NeoBundle 'YannMoisan/cra.vim'

NeoBundle 'Shougo/neocomplcache.vim'

" Undo tree manager
NeoBundle 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>

" Git wrapper
NeoBundle 'tpope/vim-fugitive'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
