tail -F license.txt
find $HOME \! -iname "*.tif"
find -name "*.jpg"
# buscar carpeta firefox
sudo find / -name firefox -print
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
# añadir usuario a un nuevo grupo
sudo adduser anb btsync

# agregar usuario como sudo
adduser demo
gpasswd -a demo sudo

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
# copiar de servidor a local
scp user@1.2.3.4:/ruta/servidor/remoto/archivo.tgz archivo-en-local.tgz

ls -sh
# order time and reverse
ls -lt
ls -ltr
-----------------------------------
# ver tamaño de directorios.
-----------------------------------
du -lh httrack/
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
# permisos chmod
r = 4
w = 2
x = 1
# permisos para archivos
chmod 666 log.log
# directorio
chmod 755 carpeta
chmod -R 777 carpeta # recursivo
# permisos para archivos
744
# permisos para carpetas
755
## Asignar permisos correctos a carpetas 755 y ficheros 644 de forma masiva
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;


# ver usuarios y eliminarlos
deluser <username> <groupname>
cat /etc/passwd
userdel usuario
# ver permisos usuarios
vipw -g
# apgar monitor lcd
xset dpms force off

#configuracion de RED Internet lubuntu
/etc/network/interfaces

Para ver el contenido de este archivo recuriremos al comando cat, asi que introduciriamos la siguente linea en consola:
cat /etc/network/interfaces
Nos aparecerán las siguientes lineas, que serán la configuracion de nuestra máquina:

lo auto
iface eth0 inet static
address 192.168.1.128
netmask 255.255.255.0
network 192.168.1.0
broadcast 192.168.1.255
gateway 192.168.1.1

@ref = http://userstrend.com/server/configurar-red-debian-ubuntu/


(192.168.0.0 - 192.168.255.255).
# ver codificacion
file -i file.html
# cambiar el formato ascci to utf8
file index.html
# en vim
vim file.srt
:set bomb
:set fileencoding=utf-8
:x
# apagar monitor
xset dpms force off

# apagar PC
sudo shutdown -h 110
# copiar por terminal *copia en memoria*
xclip -sel clip < sublime2.desktop
# limpiar archivo
sudo echo "" > /var/log/apache2/error.log

# permisos para carpetas y archivos
# To change all the directories to 755 (-rwxr-xr-x):
find . -type d -exec chmod 755 {} \;
# To change all the files to 644 (-rw-r--r--):
find . -type f -exec chmod 644 {} \;

## ZIP comprimir
zip archivo.zip ficheros
# Descomprimir
unzip archivo.zip
# TAR
tar -c ficheros | bzip2 > archivo.tar.bz2
# Descomprimir
bzip2 -dc archivo.tar.bz2 | tar -xv
# Ver:
bzip2 -dc archivo.tar.bz2 | tar -t

# permisos hosting web (HOSTGATOR)
# directories
find . -type d -exec chmod 755 {} \;
# files
find . -type f -exec chmod 644 {} \;
#exaples:
sudo chmod -R 755 * # directories
sudo chmod -R 644 *.* ## files
# acceder por ssh ingresar por ssh
ssh -p 2222 cpanelusr@ip.add.re.ss

# ver sistema operativo de mi computadora
uname -a
lsb_release -a
# saber la version del kernel
cat /proc/version
# saber la version del kernel en debian
cat /etc/debian_version


# INTALAR CRACK RAR
rarcrack = programa para crack rarcrack
# instalar depencias como libc
# sudo apt-get install libc6
sudo apt-get install libc6
sudo pecl install pthreads
sudo apt-get install libxml2
# intall in ubuntu
sudo add-apt-repository ppa:ole.wolf/rarcrack
sudo apt-get update
sudo apt-get install rarcrack
# usar comando
rarcrack --type rar file.rar

## Formatear disco
#######################
fdisk
p => ver las particiones
d => eliminar la particiones
n => crear nueva particion

## MONTAR UN DISCO
# ver tamaño de disco o espacio
fdisk -l
# discos duros siempre se ubuican en /dev
# buscar y encontrar dispositivo luego proceder a montar
mount /dev/sdb2 /media/anb/windows7

# cambiar carpeta home del usuario
# nota cambiar permisos para que sea accesible
cd /home;
sudo mkdir peter
sudo chown anibal:anibal peter
sudo usermod -d /home/peter peter
# cambiar carpeta funciono
sudo usermod -m -d /home/nuevo anibal

####
#### -----------------------------------------------
####
### cambiar de usuario temporal a usuario anb
sudo usermod -l anb temporal
### cambiar nombre de home
sudo usermod -d /home/anb -m anb
### buscar

### reiniciar wifi
sudo service network-manager restart
# more
ifconfig wlan0 down
ifconfig wlan0 up
### buscar maquinas en la red local
arp-scan --interface=wlan0 --localnet

### formatear usb
umount
sudo mkfs.vfat -n myusb -I /dev/sdb # formato FAT
sudo mkfs.ntfs -I /dev/sdb1 # formato NTFS
### bootear usb live
sudo blkid
sudo dd if=archivo.iso of=/dev/sdX
### current process
ps -A

# ver servicios activos
service --status-all

# iniciar prodceso dhcp con la red *antergos*
sudo dhcpcd enp1s0


###
# agregar SUBLIME TEXT como binario al sistema principal
# al instalar por defecto sublime.deb se instala en /opt
# Ahora solo debemos agregarlo a los binarios

cd /usr/bin
ln -s /opt/sublime_text/sublime_text sublime
#ahora si puedes ejecutar sublime desde el terminal o cualquier lado de ejecucion
sublime -new-window						# abrir sublime en una nueva ventana
sublime -U /home/anb/sites/devtool		# abrir sublime con un Ppath

# permisos
chmod 755 midirectorio # para directorios permiso de ejecucion para todos x
chmod 644 file.txt # para archivos rw

# lista enumerada
cat lista.txt
nl lista.txt

# ver informacion del sitema
uname -a

## imprimir archivo
cat lista.txt
tac lista.txt # reverse text

## imprime lineas de archivos
head lista.txt
tail lista.txt

## cuenta las letras y mas
wc lista.txt
wc lista.txt -l #cuenta las lineas escritas
wc lista.txt -c #pedo en bytes

## sort (ordenar lista segun abecedario(a-z))
sort lista.txt

# retorna string
unexpand lista.txt # de espacio a tab
expand lista.txt   # de tab a espacio

# formatear para
fmt lista.txt # ordena columnas determinadas y otros
pr lista.txt # prepara para imprimir (distribuye contenido txt)

# sacar texto delimitado por el espacio o N
cut -d " " -f 1 lista.txt # d especifica el delimitador

# listar file con texto con patron de busqueda
egrep "SELECT|JOIN" lista.txt

###
# ver octal permisos del archivo
stat -c "%a %n" *

#### AGREGAR UN USUARIO q existe A UN GRUPO
# ejemplo: añade el usuario sergio al grupo sololinux2
usermod -G sololinux2 sergio
usermod -G anb www-data # agrega el usuario www-data al grupo anb
usermod -aG www-data anb # (WORK) agrega el usuario anb al grupo www-data y mantiene su membresia en otros grupos


## ver detalle tecnico de CPU
lshw -short
lscpu

## instalar para ver detalle tecnico GUI
sudo apt-get install hardinfo

## ver detalle tecnico de la memoria RAM
sudo dmidecode --type memory | less

## escanear documentos por terminal
scanimage -d 'pixma:04A9177A_FBF3F5' --format tiff > rawr.tiff
scanimage -d 'pixma:04A9177A_FBF3F5' --format=tiff | convert tiff:- scan.jpg

scanimage --progress  --format tiff --mode Color --resolution 300 | convert - -resize 50% -quality 75 scan.jpg
