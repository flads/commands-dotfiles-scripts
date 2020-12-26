#!/bin/bash

#------------------------------------------------------------------------#
# PHP, GIT, GIT-FLOW, VIM, VIM-PLUG, WGET, CURL, COMPOSER, DBEAVER AND JQ: 
#------------------------------------------------------------------------#

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install software-properties-common -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:certbot/certbot -y
sudo apt-get update

sudo apt-get install git git-flow vim curl wget -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt-get install php7.4 php7.4-bcmath php7.4-cgi php7.4-cli php7.4-curl php7.4-dev php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-pgsql php7.4-pspell php7.4-readline php7.4-soap php7.4-sqlite3 php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip php-imagick -y

sudo a2enconf php7.3-fpm

cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt-get install openjdk-11-jdk openjdk-11-jre -y
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install dbeaver-ce -y

sudo apt-get install jq -y

# ------------------------------------------------------- #
# TMUX, ZSH, OH-MY-ZSH AND FZF:
# ------------------------------------------------------- #

sudo apt-get update

sudo apt-get install tmux -y
sudo apt-get install zsh -y
sudo apt-get install powerline fonts-powerline -y

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s /bin/zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

echo 'export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Restart your computer to apply the changes...
