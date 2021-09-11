if [ "$DISTRO"="Ubuntu" ]
then
    echo "Installing git..."
    sudo add-apt-repository ppa:git-core/ppa
    sudo apt update
    sudo apt install git -y
    echo "Git is installed"
else
    echo "try installing by yourself"
fi
