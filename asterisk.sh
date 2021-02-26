#  comand basic
# ingresar al cli asteris

sudo asterisk -c #desde tetrminal
sudo asterisk -rvvvvvvvv

#cargar modulo siesque no esta cargado
module load chan_sip.so

#verificar si el puerto 5060 esta cargado

####
# actualizar asterisk
####
service astersik reload

# configurar el archivo sip.conf (agrega los usuarios)
sudo asterisk -rvvvvvvvv
sip show peers # ver los usuarios


#dialplan recarga

dialplan reload 