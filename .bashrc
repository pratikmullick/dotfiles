#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color'
alias cls='clear'
PATH=~/bin:$PATH
PS1="[\[\e[31m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\] \[\e[34m\]\W\[\e[m\]] \\$ "
