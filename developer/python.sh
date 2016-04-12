
# scraping install library linux
sudo apt-get install libxml2-dev libxslt-dev python-dev
pip install lxml
pip install requests

# create server web easy
python -m SimpleHTTPServer 8000

# crear entornos de python
Instalar `virtualenv`

Opción #1 en debian

	sudo apt-get install virtualenv python-virtualenv

Opción #2 con pip *recomendado con pip*
	
	pip install virtualenv

Iniciar el entorno
	
	virtualenv ENV
	cd ENV
	source bin/activate

Desactivar eL entorno

	deactivate

Instalar packeque en virtualenv en el entorno.

	pip install django