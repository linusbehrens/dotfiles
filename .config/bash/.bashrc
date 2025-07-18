########## WORKSPACE ##########

alias cn='cd $HOME/.config/nvim/'
alias ct='cd $HOME/.config/tmux/'

########## SETUP ##########

set completion-ignore-case on
# bindkey -v
set -o vi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set mark-symlinked-directories on"

PS1="\n\u@\h: \w \$ "
# PS1='\[\e[34m\]\u \[\e[31m\]\w \$\[\e[0m\] '

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
alias ei='sudo emerge -av'
alias er='sudo emerge -cav'
alias p='sudo pacman'
alias bi='brew install'

alias gcl='git clone'
alias gclgh='git clone https://github.com/'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl="git --no-pager log --oneline --decorate --graph --parents"

alias ghoco="nvim $HOME/.config/ghostty/config"

alias bashrc='nvim $HOME/.config/bash/.bashrc'
alias sbashrc='source $HOME/.config/bash/.bashrc'
alias zshrc='nvim $HOME/.config/zsh/.zshrc'
alias szshrc='source $HOME/.config/zsh/.zshrc'
alias vimrc='vim $HOME/.vimrc'

alias n='nvim'
alias v='vim'
alias y='yazi'
alias ne='neofetch'

########## PATH ##########

export GPG_TTY=$(tty)
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/home/linus/.cargo/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/code/scripts/menu:$PATH"
export PATH="$HOME/code/scripts:$PATH"
export PLAN9=/Users/linus/.sources/plan9port
export PATH=$PATH:$PLAN9/bin
export XDG_CONFIG_HOME="$HOME/.config"
export MANPAGER='nvim +Man!'


########## PS1 ##########

export EDITOR=vim
