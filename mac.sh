### mac
# configuracion de apache
/opt/local/apache2/conf/extra

# apache
sudo apachectl stop
sudo apachectl restart

# cargar y recargar apache
sudo /opt/local/bin/port unload apache2
sudo /opt/local/bin/port load apache2

# ruta mysql
/opt/local/var/db/mysql56

# ver socket default in tu PC
mysql_config --socket

# Configuracion de socket en MAC (warning : No such file or directory)
## AGREGAR el socket en archivos temporales
ln -s /opt/local/var/run/mysql56/mysqld.sock /tmp/mysql.sock





# wget en mac es CURL
curl "http://127.0.0.1:8000" -o "outfile"

# abrir carpetas en mac
open .
# abrir otro terminal con directorio
open -a Terminal /path/to/folder
# Configurar finder para ver tus carpetas el path
# 01 enter line code in terminal
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
# 02 reload finder 'mata todos los finder'
killall Finder
# alternative OneLine
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES;killall Finder
# Revert changes by default
defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO;killall Finder

# copy path directory mac
# - select dir or file CMD + c and CMD + v


# SHORT KEYS 'SHORTCUTS'
CMD + I => informacion del directorio

# caputurar imagen
COMMAND + SHIFT + 3 => Captura total de la pantall
COMMAND + SHIFT + 4 => Captura por selección

# cambiar nombre
select image and BUTTON enter
# minimize window
COMMAD + M

# remplazar texto
sed  -i.bu 's/<!-- Bootstrap -->/<!-- Bootstrap2 -->/g' src/1_1.html
sed -i.log 's/<!-- Bootstrap -->/replaceeeeeee/g' src/1_1.html




###############################################################
# PHP en mac
###############################################################

sudo cp /private/etc/php.ini.default /private/etc/php.ini

# ver archivo ini ubicación
php --ini

# instalar modulos de php
sudo port install php5-mbstring

## instalar en la version 5.5
sudo port install php55-gd
sudo port install php55-mbstring


###############################################################
# programas utiles mac
###############################################################
Beyond Compare => comparador de archivos

###############################################################
# teclados
###############################################################
CMD + ALT + U => ver codigo fuente


# kill process 'application'
Activity monitor
# in terminal
kill (number pid)









