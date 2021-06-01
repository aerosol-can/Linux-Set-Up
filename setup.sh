echo -e "\e[1;32m Let's Start with Updating your Machine... \e[0m"
apt-get update
apt-get upgrade
echo -e "\e[1;32m Update Complete. \e[0m"

echo -e "\e[1;32m Installing ZSH, Git, Docker and Python3 ... \e[0m"
apt install zsh git docker
echo -e "\e[1;32m Installation Complete. \e[0m"

echo -e "\e[1;32m Install Oh-My-Zsh \e[0m"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "\e[1;32m Installation Complete \e[0m"

cd ~

echo -e "\e[1;32m Installing Nerd-Fonts... \e[0m"
git clone --depth=1 https://github.com/romkatv/nerd-fonts.git
cd nerd-fonts
echo -e "\e[1;32m Building Meslo Font... \e[0m"
./build 'Meslo/S/*'
echo -e "\e[1;32m Cloning Powerlevel10k Theme... \e[0m"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo -e "\e[1;32m Done! \e[0m"

echo -e "\e[1;32m Copying the .zshrc file... \e[0m"
touch .zshrc
curl https://raw.githubusercontent.com/aerosol-can/Linux-Set-Up/main/.zshrc > .zshrc