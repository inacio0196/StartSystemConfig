#!/bin/bash

#Arquivo principal de configuração inicial.

mkdir /home/$USER/FirstSystemConfig
cp -r * ~/FirstSystemConfig
cp * ~/FirstSystemConfig
cd ~/FirstSystemConfig

echo 'Instalando programas e utilitários'
echo
echo 'Vamos começar!'
echo
echo 'Instalando...'
echo
sudo pacman -S nodejs ranger vlc kodi dmenu firefox pavucontrol evince k3b python-pip youtube-dl krita gimp simplescreenrecorder zsh dunst vim net-tools arandr blueman --noconfirm

echo

echo 'Para baixar músicas direto do seu aplicativo Spotify'
echo 'Instalando... Spotdl'
sleep 2
sudo pip install spotdl

#############################################
echo 'Instalando o Yarn'
echo

sudo npm install -g yarn@berry
#############################################
echo 'Instalando gerênciador AUR Yay..'
echo

echo 'Instalando depêndencias do YAY...'

sudo pacman -S git go --noconfirm

echo 'Clonando repositorio...'

git clone https://aur.archlinux.org/yay.git yay

cd yay

echo 'Instalando o Yay...'

makepkg -si

cd ..
#############################################
echo 'Instalando o Snap...'
echo

#Clonando repositorio Oficial Snapd
git clone https://aur.archlinux.org/snapd.git snap

cd snap

#Contruindo
makepkg -si

cd ..

#Criando Links Simbolicos Snap
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
echo
echo 'Instalando Programas Snap...'
echo
sudo snap install code --classic
sudo snap install spotify
sudo snap install discord
sudo snap install retroarch
echo
echo "Adicionando drivers Joystick para retroarch"
sudo snap connect retroarch:raw-usb
sudo snap connect retroarch:joystick

#########################################################################










#Oh my zsh
echo 'Instalando Zsh'
sudo pacman -S zsh
echo
echo 'Instalando Oh My Zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



#Por ultimo por causa da interação com o usuário
#Editor de texto para o terminal VIM

echo 'Instalando o VIM...'
sudo pacman -S vim --noconfirm
echo
echo 'Instalando o gerênciador de Plugins vim-plug'
echo
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd Vim
touch ~/.vimrc
cat .vimrc >> ~/.vimrc
source ~/.vimrc
echo
echo "Instalando plugins no vim..."
echo
echo "Digite dentro do editor de texto Vim no modo Command digite ':PlugInstall' e aguarde a instalação dos plugins..."
echo "Precione [Enter] para entrar no arquivo .vimrc"
read enter
vim ~/.vimrc
