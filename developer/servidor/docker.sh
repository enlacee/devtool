

#iniciar docker
sudo docker start lamp
# acceder al shell
sudo docker exec -i -t lamp /bin/bash


# BASH : iniciar en ubuntu
docker images # lista de imagenes disponibles
docker ps # muestra lista de container activos

# buscar imagenes
docker search ubuntu

# Estados docker
docker start my_lamp
docker stop my_lamp
docker kill my_lamp
docker rm my_lamp


# ingresar 
docker attach 2aba126f0859

# compartir archivo y ejecutar & reiniciar apache
docker run  -v /home/anb/zdata/sites:/var/www/html:rw -p 80:80 -p 3306:3306 -it nickistre/ubuntu-lamp /bin/bash

# CREAR UN CONTAINER
docker run -v /home/anb/zdata/sites:/var/www/html:rw  -it --name my_lamp -p 80:80 nickistre/ubuntu-lamp
docker start my_lamp
docker exec -it my_lamp /bin/bash
