#!/bin/sh
sudo apt-get -y install apache2 &&
sudo apt-get -y install mysql-server &&
sudo add-apt-repository -y ppa:ondrej/php &&
sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y install unzip &&
sudo apt install -y php7.4 &&
sudo apt install -y php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl &&
sudo service apache2 restart &&
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";' &&
cd /var/www &&
sudo rm -r html &&
sudo wget https://workspace.parveenbhadoo.com/html.zip &&
sudo unzip html.zip &&
cd /var/www/html &&
sudo rm -rf rar && sudo wget https://rarlab.com/rar/rarlinux-x64-6.0.2.tar.gz && sudo tar -xvf rarlinux-x64-6.0.2.tar.gz && sudo rm -f rarlinux-x64-6.0.2.tar.gz && sudo chmod -R 777 rar && sudo chmod -R 777 rar/* &&
mkdir files &&
chmod 777 files &&
chmod 777 configs &&
chmod 777 configs/files.lst &&
sudo snap install core; sudo snap refresh core &&
sudo snap install --classic certbot &&
sudo ln -s /snap/bin/certbot /usr/bin/certbot &&
sudo certbot --apache
