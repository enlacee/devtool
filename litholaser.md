# init project
- riot.js
- python, django

# revisar paquetes
apt-cache search pg_config
apt-cache search postgresql
apt-search psycopg2

# install virtual (server : virtualenv)
sudo apt-get install python-virtualenv
# activar virtualenv
. venv/bin/activate
# instalar dependencias
pip freeze
pip install -r requirements.txt
	
	
nota
### install RIOT
# source: http://www.tutorialsavvy.com/2015/05/getting-started-with-riot-js-part1.html/#prettyPhoto
# install
npm install riot --save
# Compilador riot
convierte el texto a javascript, y lo carga antes que el browser lo ejecute.
# Para preconpilar (instalacion general)
sudo npm install riot -g

######################
# POSTGRES
######################
# dar permisos al usuario de sistema postgres
sudo su - postgres
# acces postgres
psl
# crear base de datos
create database flujo_imagenes
# listar bases de datos y tablasdjango_sitedjango_site
\list or \l: list all databases
\dt: list all tables in the current database

#########################
# UUID : Universal unique Identifier (standar)
#########################
# distribucion
8-4-4-4-12
# uuid example
123e4567-e89b-12d3-a456-426655440000

