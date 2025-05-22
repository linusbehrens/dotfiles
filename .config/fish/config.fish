if status is-interactive
    # Commands to run in interactive sessions can go here
end

###### ALIAS ######

alias c='clear'
alias e='exit'
alias l='ls -lA'
alias ll='ls -la'
alias ipa='ip a | grep 192.168.10'

###### PACKAGE MANAGER ######

alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias p='sudo pacman'
alias bi='brew install'

###### PACKAGES ######

alias v='nvim'
alias n='neofetch'
alias y='yazi'
alias g='cage ghostty'
alias gx='pkill cage'

###### SHELL ######

alias zshrc='nvim $HOME/.config/zsh/.zshrc'
alias szshrc='source $HOME/.config/zsh/.zshrc'

alias bashrc='nvim $HOME/.config/bash/.bashrc'
alias sbashrc='source $HOME/.config/bash/.bashrc'

alias fishrc='nvim $HOME/.config/fish/config.fish'
alias sfishrc='source $HOME/.config/fish/config.fish'

###### git ######

alias gcl='git clone'
alias gclgh='git clone https://github.com/'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

###### PATH ######

set -gx GPG_TTY (tty)
set -gx PATH $PATH /opt/homebrew/bin
set -gx PLAN9 /Users/linus/.sources/plan9port
set -gx PATH $PATH $PLAN9/bin
