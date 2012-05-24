##################################
# Name: UNSW-CSESoc .zshrc file 
# Email: csesoc.sysadmin@csesoc.unsw.edu.au
# Date Created: 23/5/2012
# Date Modified: 24/5/2012
# Title: .zshrc
# Description: zsh config                                         
##################################


# Define a few Color's
fg_black=%{$'\e[0;30m'%}
fg_red=%{$'\e[0;31m'%}
fg_green=%{$'\e[0;32m'%}
fg_brown=%{$'\e[0;33m'%}
fg_blue=%{$'\e[0;34m'%}
fg_purple=%{$'\e[0;35m'%}
fg_cyan=%{$'\e[0;36m'%}
fg_lgray=%{$'\e[0;37m'%}
fg_dgray=%{$'\e[1;30m'%}
fg_lred=%{$'\e[1;31m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_yellow=%{$'\e[1;33m'%}
fg_lblue=%{$'\e[1;34m'%}
fg_pink=%{$'\e[1;35m'%}
fg_lcyan=%{$'\e[1;36m'%}
fg_white=%{$'\e[1;37m'%}
at_normal=%{$'\e[0m'%}

# simple prompt
export PS1="${fg_lgreen}~${fg_purple}>${at_normal} "


# for black backgrounds ( dark blue is hard to see )
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# aliases
# colour view directory listing
alias ls="ls -Gp"

alias ..='cd ../'
alias ...='cd ../..'

#vim alias
alias v='vim'

# git aliases
alias gs='git status'
alias gp='git push -u origin'
# halts tracking of deleted files and does the normal add. 
alias ga='git add -u'
alias gl='git pull'
alias gc='git  commit -avm'


# git checkout 
# usage: gc [whatever branch] 
# if you want master leave blank
function gout {
  if [ -z "$1" ]; then
      git checkout master
  else
      git checkout $1
  fi
}

# create directory and change into it
# usage: like mkdir but md
function md {
  mkdir -p "$@" && cd "$@";
}

# zsh auto completion
autoload -U compinit
compinit

# Set options
setopt correctall
setopt autocd
setopt auto_resume

## Enables extendedglob

# encryption via gpg
# http://www.gnupg.org/
# not implemented yet


# Download entire website.
# Thanks to 
# http://www.commandlinefu.com/commands/view/901/download-an-entire-website
# wget for mac available @
# http://www.macupdate.com/app/mac/33951/wget
alias grabthis='wget --random-wait -r -p -e robots=off -U mozilla'

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000


