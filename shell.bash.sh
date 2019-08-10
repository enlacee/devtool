#---------------------------------
# :::: Que es una terminal shell bash
#---------------------------------
The terminal program is just a graphical interface to the shell.
The shell is what actually handles commands and so forth;
the terminal program just gives it a way to interact with the graphical environment.

# ver el peso de determinado disco o espacio
$ df -hT /boot

# listar discos duros
lsblk
fdisk -l
# montar disco duro
mkdir /media/temp
mount /dev/sdb1 /media/temp/
# enlazar en HOME
ln -s /media/temp /home/usuario/carpeta_destino
# dar permiso al segundo disco duro con el usuario (anb)
sudo chown -R $USER:$USER <Mount Point>

# comandos que frecuentemente usa
 history | awk '{print $2}' | sort | uniq -c | sort -rn | head
 # limpiar el historial
 history -c
 #
 history | tail -5
 # ip publicp
 curl ifconfig.me/ip
 # ver el tamaño
 $ df -hT /boot

### clone website
wget -k -p -nH -N http://browservictim.com

### config my terminal with *oh-my-zsh*

### renombrar archivos convertir nombre de archivos a minuscula
	bash
	for i in *; do mv $i `echo $i | tr [:upper:] [:lower:]`; done
