# File     : ~/.bashrc
# Author   : Matthieu Keller
# Source   : https://github.com/maggick/dotFiles
# Licence  : WTFPL
# Created  : the 23 June 2010
# Update   : the 09 January 2015
#
# ~/.bashrc: executed by bash(1) for non-login shells.
# See /usr/share/doc/bash/examples/startup-files for examples
# (in the bash-doc package).

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# History configuration
# don't put duplicate lines in the history. See bash(1) for more options  or
# force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias Listing
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias la='ls -A'
    alias ll='ls -lArth'
    alias lr='ranger'

    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias security
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -I --preserve-root'

# trick to define default arguments
# (only works when commands are typed manually in a shell)
alias less='less -F'
alias tmux='tmux -2'

# alias for my layout
alias lafayette='xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY'

#open man pages with vim
function man()
{
    vim -XMnR "+runtime! ftplugin/man.vim" "+Man $1" "+set nomodifiable" "+only"
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH
PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin # add gem to PATH

#define the default editor as vim
export EDITOR=vim

