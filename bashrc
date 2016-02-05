#
# ~/.bashrc
#

#export PS1='\[\e[1;33m\]\u@\h \w \n\[\e[12;34m\]  \$\[\e[m\] '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
PS1='[\u@\h \W]\$ '
