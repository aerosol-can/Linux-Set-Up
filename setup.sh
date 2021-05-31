#!bin/bash

#get superuser permissions
su

#update
apt update && apt upgrade

#install ZSH
apt install zsh 

#install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

#clone powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git 
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k 

