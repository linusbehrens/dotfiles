########## ALIAS ##########

alias c='clear' 
alias e='exit' 
alias v='nvim' 
alias n='neofetch'
alias l='ls -lA' 
alias ll='ls -la' 
alias s='source' 
alias zshrc='nvim $HOME/.config/zsh/.zshrc' 
alias szshrc='source $HOME/.config/zsh/.zshrc' 
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias p='sudo pacman'
alias ipa='ip a | grep 192.168.10'
alias gc="nvim /Users/linus/Library/Application Support/com.mitchellh.ghostty/"
bindkey -v

alias gcl='git clone'
alias gclgh='git clone https://github.com/'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

########## PATH ##########

export GPG_TTY=$(tty)
export PATH="$PATH:/opt/homebrew/bin"
export PLAN9=/Users/linus/.sources/plan9port 
export PATH=$PATH:$PLAN9/bin 

########## PS1 ##########

autoload -Uz vcs_info
precmd() { vcs_info }

setopt PROMPT_SUBST
PS1='
%~ ${vcs_info_msg_0_}
%% '

