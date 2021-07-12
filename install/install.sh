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

echo "Installing softwares"
./git.sh
./vim.sh
./nvim.sh
./awesome.sh
./brave.sh
echo "All softwares should be installed."
