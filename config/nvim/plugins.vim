"|
"| File     : ~/.config/nvim/plugins.vim
"| Author   : Matthieu Keller
"| Source   : https://github.com/maggick/dotFiles
"| Licence  : WTFPL
"| Created  : the 13 december 2015
"|

call plug#begin('~/.config/nvim/bundle/')
  "default settings everyone should agree to
  Plug 'tpope/vim-sensible'
  " quick fixsigns (pan on the left with signs)
  Plug 'tomtom/quickfixsigns_vim'
  " theme solarized
  Plug 'altercation/vim-colors-solarized'

  " vimwiki
  Plug 'vimwiki/vimwiki'

  " air line plugin and a simple configuration in order to avoid patching font
  Plug 'bling/vim-airline'
  " the separator used on the left side >
  let g:airline_left_sep=''
  " the separator used on the right side >
  let g:airline_right_sep=''

  "plugin to make table (Tabularize)
  Plug 'godlygeek/tabular'

  Plug 'PotatoesMaster/i3-vim-syntax'

  "on test plugins
  Plug 'fabi1cazenave/kalahari.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end() " add plugins to &runtimepath and enable syntax highlighting
