

#iniciar docker
sudo docker start lamp
# acceder al shell
sudo docker exec -i -t lamp /bin/bash


# BASH : iniciar en ubuntu
docker images
docker run -i -t b72889fa879c /bin/bash
# iniciar container
docker start 2aba126f0859
# ingresar 
docker attach 2aba126f0859
# detener un contenedor
docker stop 2aba126f0859

# compartir archivo y ejecutar & reiniciar apache
docker run  -v /home/anb/zdata/sites:/var/www/html:rw -p 80:80 -it ubuntu /bin/bash