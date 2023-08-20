alias ll='ls -l'
alias la='ls -a'

export PS1='\[\033[36m\]\t \u@\h\[\033[m\] \$ '
export CLICOLOR=1
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


HISTSIZE=10000

# don't put duplicate lines 
HISTCONTROL=ignoredups

# append to the history file, don't overwrite it
shopt -s histappend
