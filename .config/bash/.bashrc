########## WORKSPACE ##########

alias ca='cd $HOME/school/deutsch/Präsentationsprüfung'

########## SETUP ##########

set completion-ignore-case on
# bindkey -v
set -o vi

########## ALIAS ##########

alias c='clear'
alias e='exit'
alias l='ls -lA'
alias ll='ls -la'
alias s='source'
alias ipa='ip a | grep 192.168.10'

alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias p='sudo pacman'
alias bi='brew install'

alias gcl='git clone'
alias gclgh='git clone https://github.com/'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

alias gc="nvim $HOME/.config/ghostty/config"
alias bashrc='nvim $HOME/.config/bash/.bashrc'
alias sbashrc='source $HOME/.config/bash/.bashrc'
alias zshrc='nvim $HOME/.config/zsh/.zshrc'
alias szshrc='source $HOME/.config/zsh/.zshrc'

alias v='nvim'
alias y='yazi'
alias n='neofetch'

########## PATH ##########

export GPG_TTY=$(tty)
export PATH="$PATH:/opt/homebrew/bin"
export PLAN9=/Users/linus/.sources/plan9port
export PATH=$PATH:$PLAN9/bin

########## PS1 ##########

