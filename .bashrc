# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Color and clearscreen aliases
alias ls='ls --color=auto --block-size=K'
alias grep='grep --color'
alias cls='clear'

# Local user paths
PATH=~/bin:$PATH

# Prompt variables.
root_="[\[\e[1;31m\]\u\[\e[m\]@\[\e[1;31m\]\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\]] \\$ "
user_="[\[\e[31m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\] \[\e[34m\]\W\[\e[m\]] \\$ "

# Change PS1 Prompt values.
if [ $USER = root ]
then
    PS1=$root_
else
    PS1=$user_
fi

