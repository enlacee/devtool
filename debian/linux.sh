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
:::::: copiar archivos en red local
-----------------------------------
# copiar y pegar
scp -rv chamilo acopitan@192.168.1.167:/home/acopitan/
