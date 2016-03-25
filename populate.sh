FILESPATH=$HOME/.dotfiles
USERPATH=`realpath $HOME`


# Backup files on first run
if [ ! -d $FILESPATH/backup ]; 
then 
	mkdir $FILESPATH/backup
	if [ -f $USERPATH/.bashrc ]; then mv $USERPATH/.bashrc $FILESPATH/backup/; fi
	if [ -f $USERPATH/.Xresources ]; then mv $USERPATH/.Xresources $FILESPATH/backup/; fi
	if [ -f $USERPATH/.xinitrc ]; then mv $USERPATH/.xinitrc $FILESPATH/backup/; fi
	if [ -f $USERPATH/.vimrc ]; then mv $USERPATH/.vimrc $FILESPATH/backup/; fi
	if [ -d $USERPATH/.vim ]; then mv $USERPATH/.vim $FILESPATH/backup/; fi
	if [ -d $USERPATH/.config/i3 ]; then mv $USERPATH/.config/i3 $FILESPATH/backup/; fi
	if [ -d $USERPATH/.i3 ]; then mv $USERPATH/.i3 $FILESPATH/backup/; fi
fi

ln -s $FILESPATH/bashrc $USERPATH/.bashrc
ln -s $FILESPATH/Xresources $USERPATH/.Xresources
ln -s $FILESPATH/xinitrc $USERPATH/.xinitrc
ln -s $FILESPATH/vimrc $USERPATH/.vimrc
mkdir -p $USERPATH/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $USERPATH/.vim/bundle/Vundle.vim && \
	vim +PluginInstall +qall || \
	echo "You must install git in order Vundle to be installed"
ln -s $USERPATH/.vim/vundle/vim-colorschemes/colors $USERPATH/.vim/

if [ ! -d $USERPATH/.config ]; then mkdir $USERPATH/.config; fi
ln -s $FILESPATH/config/i3 $USERPATH/.config/i3
