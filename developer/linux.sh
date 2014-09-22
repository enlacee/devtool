tail -F license.txt
find $HOME \! -iname "*.tif"
find -name "*.jpg"
-----------------------------------
:::::: configurar disco permission
-----------------------------------
/etc/fstab
umask=000
-----------------------------------
:::::: crear usuarios
-----------------------------------
# usuarios
useradd [opciones] nuevoUsuario
useradd pedro
sudo passwd pedro
sudo userdel -r pedro
# agregar grupo usuario a existente a grupo existente
groupadd contabilidad
# agregar usuario existente a grupo existente
 usermod -a -G contabilidad pedro
# cambiar usuario de grupo
usermod -g retirados pedro
# VER RESOLUCION DE PC
xrandr -q | grep -w Screen
-----------------------------------
:::::: cambiar de usuario
-----------------------------------
sudo chown -Rv username directory
-----------------------------------
:::::: copiar archivos en red local erick
-----------------------------------
# copiar y pegar ::
scp -rv chamilo acopitan@192.168.1.167:/home/acopitan/
# ingresar x ssh 
ssh acopitan : password = acopitan
ssh acopitan@toc
# Copiar archivo de local a toc
scp /home/acopitan/Downloads/transmission/one.txt acopitan@toc:/home/acopitan/back
scp -r
scp -r /home/acopitan/www/dbChamilo/ acopitan@toc:/home/acopitan/back

scp acopitan@toc:/home/acopitan/caledu*.gz .
scp -rv acopitan@toc:/home/acopitan/www/chamiloutp .

mysqldump -u root -p --all-database > dump.sql
ls -sh
# order time and reverse
ls -lt
ls -ltr
-----------------------------------
# ver tamaño de directorios.
-----------------------------------
sudo du -h --max-depth=1 /home/cperales/ | sort -k1 -h
sudo df -h
watch -n 1 "df -h"
#ver dispositivos
 dmesg | grep Blu
 #ver tamanio de spacio en disco
 sudo df -h
# ver peso de la carpeta o archivo
du -sh
du -sh *

