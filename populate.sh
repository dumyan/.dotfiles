ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/Xresources ~/.Xresources
ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
if [ ! -d ~/.config ]; then mkdir ~/.config; fi
ln -s ~/.dotfiles/config/i3 ~/.config/i3
