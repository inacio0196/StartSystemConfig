#!/bin/bash

#Arquivo principal de configuração inicial.
echo 'Instalando programas e utilitários'
echo
echo 'Vamos começar!'
echo
echo 'Instalando...'
echo
sudo pacman -S nodejs ranger vlc kodi dmenu firefox pavucontrol evince k3b python-pip youtube-dl krita gimp simplescreenrecorder zsh dunst vim  -noconfirm

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
echo 'Instalando o Yay..'
echo

cd /tmp

echo 'Instalando depêndencias do YAY...'

sudo pacman -S git go -noconfirm

echo 'Clonando repositorio...'

git clone https://aur.archlinux.org/yay.git yay

cd yay

echo 'Instalando o Yay...'

makepkg -si
#############################################
echo 'Instalando o Snap...'
echo
cd /tmp

#Clonando repositorio Oficial Snapd
git clone https://aur.archlinux.org/snapd.git snap

cd snap

#Contruindo
makepkg -si

#Oh my zsh
echo
echo 'Instalando Oh My Zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#Criando Links Simbolicos
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
echo
echo 'Instalando Programas Snap...'
sudo snap install code --classic
sudo snap install spotify
sudo snap install discord
sudo snap install retroarch
echo
echo "Configurando Joystick para retroarch"
sudo snap connect retroarch:raw-usb
sudo snap connect retroarch:joystick
