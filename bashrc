# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check window size after each command, and update values
shopt -s checkwinsize

# Avoid succesive duplicates in the bash command history.
HISTCONTROL=ignoredups:erasedups

# Append to history file when Shell exits
shopt -s histappend

# Prompt variables.
root_="\[\e[1;31m\]\u\[\e[m\]@\[\e[1:32m\]\h\[\e[m\] \[\e[36m\]\W\[\e[m\] \\$ "
user_="\[\e[31m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \\$ "

# Change PS1 Prompt values according to username
if [ $USER = root ]
then
    PS1=$root_
else
    PS1=$user_
fi

# If these files are available, execute them
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bashenv ]] && . ~/.bashenv

