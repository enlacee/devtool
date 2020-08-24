## acces HDD IPHONE
# Monta directorios de ios devices
sudo apt-get install ifuse
lsusb # listado de todos lod dispositivos
mkdir ~/iphone
ifuse ~/iphone

# desmontar usuario normal

fusermount -u ~/iphone
