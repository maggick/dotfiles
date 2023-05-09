# File     : ~/.bashrc
# Author   : Matthieu Keller
# Source   : https://github.com/maggick/dotFiles
# Licence  : WTFPL
# Created  : the 23 June 2010
#
# ~/.bashrc: executed by bash(1) for non-login shells.
# See /usr/share/doc/bash/examples/startup-files for examples
# (in the bash-doc package).

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Path to your oh-my-bash installation.
#export OSH=/home/maggick/.oh-my-bash
#OSH_THEME="font"
#OMB_USE_SUDO=true
#completions=(
#  git
#  composer
#  ssh
#)
#aliases=(
#)
#plugins=(
#  git
#  bashmarks
#)
#source "$OSH"/oh-my-bash.sh

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
    #. /etc/bash_completion
#fi
eval "$(starship init bash)"


# History configuration
# don't put duplicate lines in the history. See bash(1) for more options  or
# force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Alias Listing
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias la='ls -A'
    alias ll='ls -lArth'
    alias lr='ranger'

    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    alias df='pydf'
fi
alias ls='lsd'

# Alias security
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -I --preserve-root'

# trick to define default arguments
# (only works when commands are typed manually in a shell)
alias less='less -F'
alias tmux='tmux -2'

# neovim
alias vim='nvim'

# layout
alias lafayette='setxkbmap fr -variant lafayette'

# linux command keeper
alias keep='echo $(history -p !!) >>~/dotfiles/bash_keeper.txt'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH
PATH=$PATH:$HOME/.local/bin # add local bin to PATH
PATH=$PATH:/home/maggick/.gem/ruby/2.7.0/bin

#define the default editor as vim
export EDITOR=nvim
export SUDO_EDITOR=vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

complete -C /usr/bin/terraform terraform
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac


PATH="/home/maggick/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/maggick/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/maggick/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/maggick/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/maggick/perl5"; export PERL_MM_OPT;

export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export PATH=$PATH:/opt/flutter/bin

export CHROME_EXECUTABLE=/usr/bin/chromium

export PATH="$PATH:/home/maggick/.bfrtk/bin"
