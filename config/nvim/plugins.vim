call plug#begin('~/.config/nvim/bundle/')
  "default settings everyone should agree to
  Plug 'tpope/vim-sensible'
  " quick fixsigns (pan on the left with signs)
  Plug 'tomtom/quickfixsigns_vim'
  " theme solarized
  Plug 'altercation/vim-colors-solarized'

  Plug 'godlygeek/tabular'

  Plug 'PotatoesMaster/i3-vim-syntax'


  "on test plugins
  Plug 'fabi1cazenave/kalahari.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end() " add plugins to &runtimepath and enable syntax highlighting
