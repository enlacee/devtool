
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

# project docker with fiel Dockerfile
mkdir docker-project
cd docker-project
touch Dockerfile
docker build -t pythonapp .



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
export DOCKER_BUILDKIT=1
docker build - < Dockerfile
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
docker exec -ti web1 /bin/bash
#error en el container
docker logs web1

docker run --name web2 -p 82:80 -d -v /home/anb/MyData/sites/docker/web2/app:/var/www/html --link mysql2:mysql wordpress

# para reiniciar la fuente del container
docker restart servidor_mysql


#AÑADIR tu usuario de linux al grupo www-data
sudo chgrp -R www-data /var/www
sudo chgrp -R anb /var/www
#permitir accesso a
sudo chgrp -R developer /var/www 

#Añadir tu usuario de linux al grupo www-data
sudo adduser developer
sudo usermod -a -G www-data developer

sudo chmod -R g+w /var/www
sudo find /var/www -type f -exec chmod ug+rw {} \;

## docker permiso denegado
# Docker permission denied

sudo usermod -a -G docker $USER


# levantar un servidor apache en container docker
docker run -d -p 82:80 httpd

## docker composer para usar multiples container
docker-compose -f docker-compose.yml -f production.yml up -d

# se compone de 3 procesos
1. Dockerfile
2. docker-compose.yml
3. RUN docker-compose up


#docker expert

1. docker comand terminal normal
2. docker-compose : manejar multiples contenedores controlados por archivos
3. docker-maquine : maneja multiples hosts

# start with docker-compose
cd docker-anibal
docker-compose up -d #from your project directory.
docker-compose up  #modo independiente
docker ps -al
docker exec -it 55f176687302 bash

# login with group docker to use
newgrp docker

###
# Docker step to step
###
# Generamos una imagen con el archivo
DockerFile

# execute una imagen
docker run <ImageName>
# comand usefull
docker pull ubuntu
docker images | head
# container
docker ps 
docker start <id-container>
# ver logs del container
docker logs -f <id-container> 
# acceder al bash del container encendido
docker exec -it <id-container> sh
# correr por background (in De-attachemd)
docker run -d nginx
#
# Create app real-life
#
# File: DockerFile
# despues de crear el archivo
# Construir el contenedor (crea la imagen)
cd docker-directory
docker build .
# creado el contenedor (con etiqueta)
docker run getting-started
# creando el contenedor pero con acceso 
# y disponible al puerto
docker run -p 3000:3000 getting-started

###
# 02. Docker realLife
###
# creando 2 contenedores y 1 red para que se puedan ver en la red.
# creando red
docker network create <todo-app>
# create container
docker run -d \
--network todo-app --network-alias mysql \
-v todo-mysql-data:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=secret \
-e MYSQL_DATABASE=todos \
mysql:5.7
# acceder ejecutar comando de modo it interactivo (ejecutamos el comando mysql-p dentro del contenedor)
docker exec -it <container-ID-b6c5e32aaf5a> mysql -p

# crear container tool (para usar dentro de la red)
docker run -it --network todo-app nicolaka/netshoot
# util (ver la ip de mysql en la red)
dig mysql
## 
docker run -dp 3000:3000 \
--network todo-app \
-e MYSQL_HOST=mysql \
-e MYSQL_USER=root \
-e MYSQL_PASSWORD=secret \
getting-started:v2



###
cd 01-docker-ejemplo
docker-compose up -d

## reiniciar red
docker-compose down
## activar todos los container
docker-compose up -d
=======

##
# DOCKER COMPOSE
# resource = https://github.com/56kcloud/traefik-training/
##
docker-compose up -d
docker-compose logs
# stop services
docker-compose stop

## 02
# file = docker-compose.file.yml
docker-compose -f docker-compose.file.yml up -d
docker-compose -f docker-compose.file.yml stop

## 03
docker-compose -f docker-compose.cli.yml up -d
docker-compose -f docker-compose.cli.yml logs
docker-compose -f docker-compose.cli.yml stop
# Change the container name
docker rename charming_herschel honeygain1
# update the restart option default to contaner selected
docker update --restart on-failure:3 honeygain1 #Example Always restart only stop if fail by three times
