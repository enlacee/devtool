

#iniciar docker
sudo docker start lamp
# acceder al shells
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
# Eliminar imagen docker
docker rmi container1 -f


# ingresar
docker attach 2aba126f0859

# compartir archivo y ejecutar & reiniciar apache
docker run  -v /home/anb/zdata/sites:/var/www/html:rw -p 80:80 -p 3306:3306 -it --name my_lamp nickistre/ubuntu-lamp /bin/bash

# CREAR UN CONTAINER
sudo docker run -v /home/anb/sites:/var/www/html:rw  -it --name lamp -p 80:80 -p 3306:3306 nickistre/ubuntu-lamp
docker start my_lamp
docker exec -it my_lamp /bin/bash

### eliminar
sudo docker rmi 5b2d41f89d4b

### importar container docker
sudo docker load -i container1.tar

### ver carpetas de imagen
sudo docker run container1 ls -l


## Crear una imagen en base a `Dockerfile`
Simple example: `https://github.com/dockerfile/ubuntu`
nginx_image : nombre de la imagen
```bash
docker build -t nginx_image .
```


###################
## DJANGO
###################
sudo docker pull dockerfiles/django-uwsgi-nginx
sudo docker run -t -i dockerfiles/django-uwsgi-nginx /bin/bash

##################
# crear un container apartir de un repositorio docker
#################
* Paso 1: clonar el repositorio

	git clone git@github.com:dockerfiles/django-uwsgi-nginx.git

* Paso 2: ir al repositorio

	cd django-uwsgi-nginx

* Paso 3: construir la imagen llamado *webapp*

	sudo docker build -t webapp .

* Paso 4: crear el container

	sudo docker run -d webapp

* Paso 5: ingresar por terminal

	sudo docker exec -i -t *hashContainer* /bin/bash

* Paso 6: ingresar al home del app e iniciar el servidor

	cd /home/docker/code/app

*



python manage.py runserver
