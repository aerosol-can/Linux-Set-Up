
#update
apt update && apt upgrade

#install ZSH
apt install zsh 

#install Git
apt install git

#install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

#clone powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git 
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k 

#copying the .zshrc file
curl https://raw.githubusercontent.com/aerosol-can/Linux-Set-Up/main/.zshrc > .zshrc 
