rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim

rm -rf ~/.config/weechat
ln -s ~/dotfiles/weechat/ ~/.config/weechat

rm -rf ~/.sources
ln -s ~/dotfiles/.sources/ ~/.sources

rm -rf ~/.scripts
ln -s ~/dotfiles/.scripts/ ~/.scripts

rm -rf $HOME/Library/Application Support/com.mitchellh.ghostty
ln -s $HOME/dotfiles/ghostty/ $HOME/Library/Application Support/com.mitchellh.ghostty
