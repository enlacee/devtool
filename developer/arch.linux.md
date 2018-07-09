## install programas por pacman
	sudo pacman -S git tk

## install programas por yaour

### install con antergos

# actualizar sistema y paquetes
	sudo pacman -Sy
	sudo pacman -Su

# eliminar programa
	sudo pacman -Rns atom
	sudo pacman -Syu atom

# instalar uno a uno
	sudo pacman -S virtualbox

# buscar paquete
	sudo pacman -Ss jre

## actualizar sistema
	pacman -Syu


### install gem
set PATH ruby
	PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"


### instalar  e desisntalar plasma KDE

Instalar
	sudo pacman -S plasma

Desistalar
	sudo pacman -Rcns plasma



