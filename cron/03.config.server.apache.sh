# ! /bin/bash
# SUDO
# Configuracion para ubuntu
# Crear archivo virtualhost local.local/ => /var/www/html

## 01: crear virtual host
ME_FILE_NAME="local.local.conf"
ME_FILE="./03/virtualhost.txt" #the file where you keep your string name
ME_FILE_HOST="/etc/hosts"
ME_STRING=$(cat "$ME_FILE")

echo "$ME_STRING" >> $ME_FILE_NAME
sudo mv $PWD/$ME_FILE_NAME /etc/apache2/sites-available/$ME_FILE_NAME

## 02: leer y escribir virtual host
LIST=$(cat "$ME_FILE_HOST")
SOURCE="local.local"
# grep -q => retorna status
if echo "$LIST" | grep -q "$SOURCE"
then
	echo "matched";
else
	echo "no match";
	echo "127.0.0.1	$SOURCE" >> $ME_FILE_HOST
fi

## 03: reiniciar servidor
sudo a2ensite $ME_FILE_NAME
sudo /etc/init.d/apache2 restart


# condicional leeer linea por linea
#
#while IFS= read -r var
#do
#	LIST=$var
#done < "$input"
#
