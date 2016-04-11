#
# ~/.bashrc
#

#export PS1='\[\e[1;33m\]\u@\h \w \n\[\e[12;34m\]  \$\[\e[m\] '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
PS1='\[\e[0;36m\]┌─\[\e[1;37m\][\u@\h]\[\e[0m\]\[\e[0;36m\]─\[\e[0;93m\](\w)\n\[\e[0;36m\]└─\[\e[1;32m\][\A]\[\e[0m\]\$ '
TERM='rxvt-256color'
