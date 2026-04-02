if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
  # remove greeting
end

# Aliases
alias vim="nvim"                                  # neovim
alias vi="nvim"                                  # neovim
alias v="nvim"                                  # neovim
alias ls="lsd"                                    # lsd
alias df='pydf'                                   # pydf
alias top='btop'                                  # btop
alias htop='btop'                                 # btop
alias cat='bat'                                 # btop
alias keep='echo $(history -p !!) >>~/dotfiles/bash_keeper.txt' # linux command keeper

function gp
  git add ./
  git commit -m $argv
  git push
end

#define the default editor as vim
export EDITOR=nvim
export SUDO_EDITOR=vim
#/usr/bin/rtx activate fish | source

# testing zoxide
zoxide init --cmd cd fish | source
