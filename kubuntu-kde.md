## Install kubuntu en Ubuntu

```bash
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt-get update

# alternative 1
sudo apt-get dist-update
sudo apt-get install kubuntu-desktop

# alternative 2
sudo apt-get install --no-install-recommends kubuntu-desktop

```

# resolver bug
sudo apt-get upgrade --fix-missing
sudo dpkg --configure -a

### Intall 20 things for kubuntu
http://www.binarytides.com/better-kubuntu-14-04/

# kde reiniciar escritorio
killall plasmashell
plasmashell

# Shortcut key
#################
CTRL+ALT+L => bloquear desktop
CTRL+ESC => administrador de tareas

# install package
#################
sudo apt-get install libx11-dev

# buscar codigo ; ack-grep
ack-grep "console.log"

## instalacion basica KDE
sudo apt-get install lubuntu-restricted-extras
sudo apt-get install exuberant-ctags

## limpiar papelera
rm -rf ~/.local/share/Trash/*

####################################
## config kde
####################################
## ver detalle sys
infocenter
## workspace
workspace > virtual desktop
####################################
## config kde monitores
####################################
xrandr --output
xrandr --output LVDS-1 --auto


###
# programas a instalar
###
sudo apt-get install kcolorchooser


## ver archivos compartidos de windows
	
	Smb4K

## compartir archivo kubuntu metodo samba
	
referencia [compartir archivo ubuntu samba](https://www.muylinux.com/2016/09/23/carpeta-ubuntu-16-04-samba/)
Agregar el directorio a compartir en el archivo de configuración: /etc/samba/smb.conf
En la ultima linea agregar

	sudo vim /etc/samba/smb.conf

	[compartido4amano]
	path = /home/anb/zData/compartido4amano
	read only = no
	guest ok = yes
	browseable = yes
	create mask = 0777

Nota: en caso no funcionar dar todos los permisos a la carpeta *compartido4amano*

	sudo chmod -R 777 compartido4amano


