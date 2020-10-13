
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

sudo apt-get install virtualenv python-virtualenv
# crear 
virtualenv mi_proyecto
# activar
cd mi_proyecto
source bin/activate
# desactivar 
deactivate
# instalar packeque en virtualenv
pip install django
# crear proyecto:
django-admin.py startproject mysite
# crear app:
cd mysite
django-admin.py startapp my_app


## instalar mkdocs *documentacion*
# funciona
wget https://bootstrap.pypa.io/get-pip.py
sudo -H python get-pip.py
sudo -H pip uninstall mkdocs
sudo -H pip install mkdocs

# Iniciar servidor
mkdocs serve


#### code

type("mi name")
type(99.9)

conversion

	int(True)
	int("45")
	float(True) # 1.0

print long string

	frase = ''' i do not like thee, Doctor fell.
		The reason why, I CANNOT TELL.
		but this I Know, and know full well:
		I do not like thee, Doctor Fell.
	'''

tamaño del string

	cadena = "my name is pepe"
	len(cadena) # 5

concatenar con ´join´

	",".join(["pepe", "maria", "jarry", "kelly"])

capitalize (capitalize, tittle, upper, lower, swapcase)

	cadena.capitalize()

replace

	cadena.replace('duck', 'marmoset')

add [] & del & remove

	lista.append("111", "2222", "3333")
	del lista[0]
	lista.remove('222')

	lista.pop(1)
	linsta.index('3333')

update diccionario dict() or {}
	
	first = {'a':1, 'b':2}
	second= {'b', 'playypus'}
	first.update(second)
	del first[a]

si el key existe

	'a' in first # True

obtener valor

	first.get('a')

obtener id UNIQUE value de cada objeto

	id(variable)


mostrar variables locales y globales

	print(locals())
	print(globals())



### instalar versiones de python BEST DOCUMENTATION

	[Best documentation pyenv] (https://realpython.com/intro-to-pyenv/)

	$ pyenv virtualenv 3.6.8 project2-tmp
	$ pyenv local project2-tmp

