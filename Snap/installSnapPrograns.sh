#!/bin/bash - 
#===============================================================================
#
#          FILE: installSnapPrograns.sh
# 
#         USAGE: ./installSnapPrograns.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/09/2019 22:43
#      REVISION:  ---
#===============================================================================

#!bin/bash

echo "Instalando programas e recursos de forma rápida e fácil..."
sleep 2 

echo "Programas: Visual Studio Code, discord, reatroarch, Spotify... "

sudo apt update 
sudo apt upgrade 

sudo apt install snapd 

sudo snap install code --classic
sudo snap install spotify 
sudo snap install discord 
sudo snap install retroarch 

echo "Configurando Joystick para retroarch"

sudo snap connect retroarch:raw-usb
sudo snap connect retroarch:joystick
