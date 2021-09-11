#!/bin/sh

export DISTRO=$(lsb_release --id | awk '{print $3}')
echo "Your operating system is ${DISTRO}. \nChecking....\nIf I can install softwares"

if [ "$DISTRO"="Ubuntu" ]
then
    echo "#######################################################################"
    echo "#                                                                     #"
    echo "#                        your distro is supported                     #"
    echo "#                                                                     #"
    echo "#######################################################################"
    echo "installing softwares........."
    echo "It may take sometime"

    echo "updating"
    sudo apt update && sudo apt upgrade -y
    echo "update complete"

    echo "Changing permission to all install scripts in this directory"
    chmod +x ./git.sh
    chmod +x ./vim.sh
    chmod +x ./nvim.sh
    chmod +x ./awesome.sh
    chmod +x ./brave.sh

    echo "Installing softwares"
    ./git.sh
    ./vim.sh
    ./nvim.sh
    ./awesome.sh
    ./brave.sh
    echo "All softwares should be installed."

    echo "cloning repository for configuration file"
    git clone https://github.com/vivek80801/dotfiles
    echo "cloning repository is finished"

    echo "creating ${HOME}/.config"
    mkdir ${HOME}/.config
    echo "${HOME}/.config is created"

    echo "linking all files"
    ln -s ${HOME}/dotfiles/.gitconfig ${HOME}/.gitconfig
    ln -s ${HOME}/dotfiles/.vimrc ${HOME}/.vimrc
    ln -s ${HOME}/dotfiles/.tmux.conf ${HOME}/.tmux.conf
    ln -s ${HOME}/dotfiles/.zshrc ${HOME}/.zshrc
    ln -s ${HOME}/dotfiles/.Xresources ${HOME}/.Xresources
    ln -s ${HOME}/dotfiles/nvim ${HOME}/.config/nvim
    ln -s ${HOME}/dotfiles/awesome ${HOME}/.config/awesome
    echo "all files are linked"
    echo "All done"
else
    echo "#######################################################################"
    echo "#                                                                     #"
    echo "#                 your distro not is supported                        #"
    echo "#                                                                     #"
    echo "#######################################################################"
fi
