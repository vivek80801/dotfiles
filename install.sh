#!bin/sh
echo "linking all files"
ln -s ./.gitconfig ~/.gitconfig
ln -s ./.vimrc ~/.vimrc
ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.zshrc ~/.zshrc
ln -s ./.Xresources ~/.Xresources
ln -s ./nvim ~/.config/nvim
ln -s ./awesome ~/.config/awesome
echo "all files are linked"
echo "Installin git"
sudo apt-get install git
echo "Git is intalled"
echo "installing vim"
echo "vim is installed"
echo "installing neovim"
echo "neovim is installed"
