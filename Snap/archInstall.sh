#!bin/bash 

sudo snap install discord
sudo snap install retroarch

echo "Configurando Joystick para retroarch"

sudo snap connect retroarch:raw-usb
sudo snap connect retroarch:joystick

