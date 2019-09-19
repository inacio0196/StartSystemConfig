#!bin/bash

mkdir ~/tmpzsh
cp configZshrc.txt ~/tmpzsh 
cp pluginsZshrc.txt ~/tmpzsh 
cp aliases.txt ~/tmpzsh 

echo "Instalando Shell ZSH personalizado..."

#sudo apt install unzip unrar 
#sudo apt install zsh

sudo pacman -S unzip unrar 
sudo pacman -S zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#sudo apt-get install dconf-cli

sudo pacman -S dconf-cli

mkdir ~/tmp 
cd ~/tmp 

git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
cd gnome-terminal-colors-dracula 
ls
./install

wget https://github.com/tonsky/FiraCode/releases/download/1.207/FiraCode_1.207.zip

unzip FiraCode_1.207.zip 
rm FiraCode_1.207.zip

echo "Entre na pasta ~/tmp/FiraCode/ttf"
echo "Certifique-se de entrar dentro da pasta FiraCode para instalar as fontes manualmente depois volte ao terminal e pressione [ENTER]"
echo ""
echo "Configure a fonte no terminal através da aba Editar/Preferencias/Texto"
read enter 

echo "Agora que você já instalou as fontes manualmente as pastas serão apagadas"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

echo "Criando link simbólico para o arquivo do tema SpaceShip"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Agora dentro de ~/.zshrc antere a variavel ZSH_THEME="spaceship""
echo
echo "Aperte [ENTER] para abrir o arquivo e alterar..."
echo "E salve digitando :wq"
read enter 

vim ~/.zshrc 

echo "Adicionando as configurações no final do arquivo .zshrc"
cat ~/tmpzsh/configZsh >> ~/.zshrc

echo 
echo "Instalando Plugins e o gerenciador de Plugins Zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

echo 'Adicionando plugins ao final do arquivo ~/.zshrc'
cat pluginsZshrc.txt >> ~/.zshrc
echo
echo "Adicionando aliases ao arquivo ~/.zshrc"

echo "Verifique na página no pdf ou na pagina do tutorial se algum erro foi retornado."

cat ~/tmpzsh/aliases.txt >> ~/.zshrc 
rm -r ~/tmpzsh 
rm -r ~/tmp 

echo "Instalando buscador de arquivos no terminal, para utilizar basta pressionar Ctrl+t"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

echo "Para ver, editar ou adicionar os aliases, visite o arquivo ~/.zshrc e procure por 'aliases', digite no terminal zshrc para abrir o arquivo automaticamente com o editor vim"
sleep 2

zsh 
