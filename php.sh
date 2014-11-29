-----------------------------------
:::::: install php plugin
-----------------------------------
sudo apt-get install php5-json
sudo apt-get install php5-sqlite
sudo apt-get install php-apc = (almacena en cache)
apt-get install php5-mcrypt
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/apache2/conf.d/ # for Apache
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/cli/conf.d/ # for CLI
# LDPA estructura
# xhprof
sudo pecl config-set preferred_state beta
sudo pecl install xhprof
#+++
sudo apt-get install php5-gd
sudo apt-get install php5-gd
# format standar xslt
sudo apt-get install php5-xsl

intl
-----------------------------------
:::::: See Shell all libraries install
-----------------------------------
php -m
-----------------------------------
:::::: php.ini 
-----------------------------------
# configuracion  para enviar files pesados PHP OKKK
upload_max_filesize = 1000M ;1GB
post_max_size = 1000M
# show error
display_errors = On


-----------------------------------
:::::: Code
-----------------------------------
$js = <<<EOD
<script type="text/javascript"><!--
console.log("loging")
--></script>
EOD

::::::
#PEAR
apt-get install php-pear #instalamos pear
$ sudo pear channel-update pear.php.net #actualizamos los canales
$ sudo pear list #nos muestra los paquetes instalados
$ pear remote-list #muestra la lista de paquetes disponibles para instalar
#install PHPUnit
sudo pear config-set auto_discover 1
sudo pear install pear.phpunit.de/PHPUnit
