#!/bin/bash

#-------------------------------------#
# PHP, GIT, VIM, WGET, CURL AND APACHE:
#-------------------------------------#

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:certbot/certbot
sudo apt-get update

sudo apt-get install git vim curl wget apache2

sudo apt-get install php7.3 php7.3-bcmath php7.3-cgi php7.3-cli php7.3-curl php7.3-dev php7.3-enchant php7.3-fpm php7.3-gd php7.3-gmp php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-pgsql php7.3-pspell php7.3-readline php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-zip

sudo a2enconf php7.3-fpm

sudo systemctl reload apache2

sudo curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && composer self-update

# ------ #
#  NODEJS AND NPM WITH NVM:
# ------ #

sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
sudo source ~/.bashrc

sudo nvm install v12.14.0
sudo nvm use v12.14.0

# ------ #
#  YARN:
# ------ #

sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn