# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check window size after each command, and update values
shopt -s checkwinsize

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Local user paths
PATH=~/bin:$PATH

# Prompt variables.
root_="\[\e[2;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \\$ "
user_="\[\e[1;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] > "

# Change PS1 Prompt values according to username
if [ $USER = root ]
then
    PS1=$root_
else
    PS1=$user_
fi

# Source .bash_aliases if they exist
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Set default editor to vim
export EDITOR=vim
