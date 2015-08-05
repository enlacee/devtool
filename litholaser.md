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
