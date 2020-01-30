#!/bin/bash -

echo "Instalando o vim"
#sudo update
#sudo apt install vim
sudo pacman -S vim


mkdir ~/tmpvim
cp .vimrc ~/tmpvim
cd ~

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


cd ~/tmpvim
touch ~/.vimrc
cat .vimrc >> ~/.vimrc
source ~/.vimrc

echo "Instalando plugins no vim..."
echo
echo "Digite dentro do editor de texto Vim no modo Comand ':PlugInstall' e aguarde a instalação dos plugins..."
echo "Precione [Enter] para entrar no arquivo .vimrc"
read enter
vim ~/.vimrc
