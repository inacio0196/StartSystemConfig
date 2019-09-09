#!bin/bash 

mkdir ~/tmpfunctions
cp * ~/tmpfunctions 
cd ~/tmpfunctions
cat funcoes.txt >> ~/.zshrc 

rm -r ~/tmpfunctions 

