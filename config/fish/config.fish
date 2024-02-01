if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
  # remove greeting
end

# Aliases
alias vim="nvim"                                  # neovim
alias ls="lsd"                                    # lsd
alias lafayette='setxkbmap fr -variant lafayette' # layout
alias df='pydf'                                   # pydf
alias top='btop'                                  # btop
alias htop='btop'                                 # btop
alias keep='echo $(history -p !!) >>~/dotfiles/bash_keeper.txt' # linux command keeper

#define the default editor as vim
export EDITOR=nvim
export SUDO_EDITOR=vim
/usr/bin/rtx activate fish | source
