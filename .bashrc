#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls -lah --color=auto'
alias ll='ls -lh --color=auto'
alias grep='grep --color=auto'
alias bashrc="nvim ~/.bashrc"
alias sbashrc="source ~/.bashrc"
alias v="nvim"
alias p="sudo pacman"
alias c="clear"
alias n="neofetch"

PS1='[\u@\h \W]\$ '
