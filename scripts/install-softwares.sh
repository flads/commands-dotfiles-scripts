#!/bin/bash

#------------------------------------------------------------------ #
# PHP, Git, Git-Flow, Vim, Vim-Plug, Wget Curl, Composer and OpenJDK:
#------------------------------------------------------------------ #

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install git git-flow vim curl wget -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt-get install software-properties-common -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:certbot/certbot -y
sudo apt-get update

sudo apt-get install php7.3 php7.3-bcmath php7.3-cgi php7.3-cli php7.3-curl php7.3-dev php7.3-enchant php7.3-fpm php7.3-gd php7.3-gmp php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-pgsql php7.3-pspell php7.3-readline php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-zip php-imagick -y

sudo a2enconf php7.3-fpm

cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt-get install openjdk-11-jdk openjdk-11-jre -y

#----------------------------------- #
# Postman, Nginx, MySQL, Redis and Jq:
#----------------------------------- #

sudo snap install postman -y

sudo apt-get install jq -y

sudo apt-get install nginx -y

sudo apt-get install mysql-server -y

sudo apt-get install redis-server -y

sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python-certbot-nginx -y

# --------------------------- #
# Tmux, Zsh, Oh-My-Zsh and Fzf:
# --------------------------- #

sudo apt-get update

sudo apt-get install tmux -y
sudo apt-get install zsh -y
sudo apt-get install powerline fonts-powerline -y

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s /bin/zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

source ~/.zshrc

# --- #
# GOGH:
# --- #

mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Mayccoll/Gogh.git gogh
cd gogh/themes

export TERMINAL=gnome-terminal

# ./chalk.sh

# Restart your computer to apply the changes...
