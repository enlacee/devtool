
# BASH : iniciar en ubuntu

docker images # lista de imagenes disponibles
docker ps # muestra lista de container Activos
docker ps -a # muestra todos los containers
# eliminar todos los contenedores no activos
docker container prune
# eliminar contenedor
docker rm #hash


# elimiar images
docker rmi (ImageName or ID)

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
# crear un container basico
# docker -p 80:80 --name [name container] [name image]

# compartir archivo y ejecutar & reiniciar apache
docker run  -v /home/anb/zdata/sites:/var/www/html:rw -p 80:80 -p 3306:3306 -it --name my_lamp nickistre/ubuntu-lamp /bin/bash

# CREAR UN CONTAINER
sudo docker run -v /home/anb/sites:/var/www/html:rw  -it --name lamp -p 80:80 -p 3306:3306 nickistre/ubuntu-lamp

#iniciar el container
docker start lamp
# acceder al shells
docker exec -i -t lamp /bin/bash

### eliminar imagen
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


python manage.py runserver

#####################
# docker beginer
#####################
# Construir imagen (teniendo tu archivo Dockerfile )
docker build -t firstcontainerdocker .

# Revisa tu si tu container fue creados (ya tienes la imagen?)
docker images

# hacer publico el container `-p`
docker run -p 4000:80 firstcontainerdocker

# ejecutar la app en background (modo separado)
docker run -d -p 4000:80 firstcontainerdocker

# ver los containers corriendo
docker container ls

# lista de container creados y ejecutados actualmente
docker container ls

# detener el contenedor
docker container stop 336a1130f5de

# crear version del container1
docker tag firstcontainerdocker enlacee/firstcontainerdocker:v1

# ver los containers y las versions (tag)
docker images

# docker login
docker login

# subir tu imagen
docker push enlacee/firstcontainerdocker:v1

# traer tu imagen y correr (sino lo tienes en local on the machine: docker will pull it from repository)
docker run -p 4000:80 enlacee/firstcontainerdocker:v1

#####################
# docker machine default
#####################
docker-machine ls
sudo apt install virtualbox
docker-machine create --driver virtualbox default
eval "$(docker-machine env default)" # conectarte al shell
# stop machine
docker-machine stop default
docker-machine start default
# login to machine
docker-machine ssh default #(aqui se puede ver la carpeta creada a compartir /project_name )
# share volumes
#####################
docker-machine stop
vboxmanage sharedfolder add default --name "project_name" --hostpath "<full_project_path>" --automount
# vboxmanage sharedfolder add default --name "project_name" --hostpath "/home/anb/sites" --automount
docker-machine start
# basic apache php
#####################
docker run -v /project_name:/var/www/html:rw  -it --name apache-php -p 80:80 nimmis/apache-php5
#ver path mount from container
docker inspect -f '{{ .Mounts }}' appserver
# ver detalle del container (configuracion)
docker inspect <container-name>
#####################
# create machine mi-mysql
####################
# docker-machine create miweb # alternative basic
docker-machine create --driver virtualbox
docker-machine ls
docker-machine stop miweb
vboxmanage sharedfolder add default --name "project_name" --hostpath "/home/anb/sites" --automount
docker-machine start miweb
docker-machine ip miweb
eval "$(docker-machine env miweb)" ## access to machine and create the n container
docker run -p 3306:3306 --name mi-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6
docker run -v /project_name:/var/www/html:rw -p 3306:3306 --name mi-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6
# into mi-mysql
docker exec -i -t mi-mysql /bin/bash

# crear un servidor web y mysql
###############################
sudo docker run -v /project_name:/var/www/html:rw  -it --name lamp -p 80:80 -p 3306:3306 nickistre/ubuntu-lamp

# container php7
###############################
docker run -v /project_name:/app:rw  -it --name apache-php7-webdevops -p 80:80 webdevops/php-apache:ubuntu-16.04

## container NGINX Y PHP5.6 (ubuntu)
docker pull justckr/ubuntu-nginx-php:php5.6
docker run  -it --name ubuntu-nginx-php -p 80:80 justckr/ubuntu-nginx-php:php5.6
docker start ubuntu-nginx-php
docker exec -i -t ubuntu-nginx-php /bin/bash

## config
service nginx restart
nginx -V
cat /etc/nginx/nginx.conf
cd /etc/nginx/sites-enabled
cat default.conf  # see directori public = /app/src/public

### Asociar contenedores usar el parametro  --link
docker run --name servidor_wp -p 80:80 --link servidor_mysql:mysql -d wordpress
### apache php 7
docker run -d --name apache-php7 nimmis/alpine-apache-php7

## ejecutar script apache php y mysql vinculado
docker run -d --name apache-php7 -v /home/anb/MyData/sites:/var/www/html -p 80:80 --link servidor_mysql:mysql nimmis/apache-php7
docker exec -ti apache-php7 /bin/bash

## ejecutar mysql
docker exec -i -t servidor_mysql /bin/bash

## descargar adminer
wget -O db.php https://github.com/vrana/adminer/releases/download/v4.6.3/adminer-4.6.3-en.php

## servidor wordpress (servidor mysql & servidor apache+PHP7.2)
docker run -d --name mysql2 -e MYSQL_ROOT_PASSWORD=123456 mysql
docker run --name web1 -p 80:80 -d -v /home/anb/MyData/sites:/var/www/html --link mysql2:mysql wordpress 
docker inspect -f "{{ .HostConfig.Links }}" web1
docker exec web1 /bin/bash

# para reiniciar la fuente del container
docker restart servidor_mysql