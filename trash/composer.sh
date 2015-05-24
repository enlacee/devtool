# install upack by tar
composer install --prefer-source

composer update = actualizar repositorios

# instalar con php  las depencias
php composer.phar install


## ---------------------------------------
## INSTALLAR COMPOSER LINUX PASO A PASO
## ---------------------------------------
# 01 
curl -sS https://getcomposer.org/installer | php
# 02
chmod 777 composer.phar
# 03
sudo mv composer.phar /usr/local/bin/composer
# 04 : agregar una libreria
composer require zendframework/zftool:dev-master