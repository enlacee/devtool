# YEOMAN

#################################
# Intalar Generador Yeoman
#################################
	
	npm install -g yo

Instalar generador de proyectos para **wordpress**
	
	npm install -g yo generator-wordpress

Iniciar el servidor

	yo wordpress

En esta face debes de asignar la URL localhost de tu proyecto
en el mio fue `http://localhost/acopitan/yeo-wordpress/`.
Luego leer y confirmar.

#################################
# Crear tu propio Generador Yeoman
#################################
Actulizar o cambiar el nombre para personalizar tu generador

	npm install -g yo
	git clone  git@github.com:yeoman/generator-generator.git
	cd generator-generator
	sudo npm install
	sudo npm link #Agregar el generador en tu binario local

	# Comando para generar tu proyecto x
	yo generator


Eliminar generadores

	npm uninstall -g generator-xxx
