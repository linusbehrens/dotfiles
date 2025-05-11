rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim

rm -rf ~/.config/weechat
ln -s ~/dotfiles/weechat/ ~/.config/weechat

rm -rf ~/.sources
ln -s ~/dotfiles/.sources/ ~/.sources

rm -rf ~/.scripts
ln -s ~/dotfiles/.scripts/ ~/.scripts

rm -rf $HOME/Library/Application Support/com.mitchellh.ghostty
rm -rf $HOME/.config/ghostty
ln -s $HOME/dotfiles/ghostty/ $HOME/.config/

rm -rf $HOME/.config/yazi
ln -s $HOME/dotfiles/yazi/ $HOME/.config/
