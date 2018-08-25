## install

https://puphpet.com

1) instalar vagrant
2) instalar virtual box

## ejecutar comando mkdir my-vagrant : esto instala un virtual
vagrant init hashicorp/precise32
vagrant up


vagrant box add hashicorp/precise32

## lebantar app
vagrant up
vagrant ssh

# aki tenemos sincronizado la  caja virtual

# crear un archivo en local
touch /vagrant/foo


vagrant reload

###################3
## VAGRANT

	vagrant init # crear un archivo base de inicio

Configurar archivo: Vagrantfile
descargar ubuntu
	Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/trusty64"

Iniciar maquina virtual

	vagrant up
Acceder por ssh
	vagrant ssh
Salir de la maquina virtual
	exit
Apagar maquina
	vagrant halt
Destruir la maquina
	vagrant destroy

La maquina solo se crea e instala una sola vez si quieres resintalar nuevamente todo por y leer la linea de comando por
provision SHELL

	vagrant provision # desde la maquina
	vagrant up --provision # al iniciar la maquina
