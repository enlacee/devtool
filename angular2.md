# angular 2

Create your aplication by terminal

	sudo npm install angular-cli -g
	ng fisrt-app
	cd first-app
	ng serve

Create other component

	ng generate component other

Create other component inline

	ng generate c another --flat -it -is
	ng g c pages/about --inline-style --spec=false  ## generar en la carpeta y sin archivos de prueba
	ng generate component home -it -is --spec=false
	ng serve --port=4201


### ANGULAR WITH SCSS
ref: [Add Sass Bootstrap 4](https://github.com/angular/angular-cli/wiki/stories-include-bootstrap)

	ng new my-app-angular-scss --style=scss
	npm install bootstrap@next --save


#### create components

	ng generate component header

	ng generate component header -is --flat

#### create class

	ng generate class my-new-class
	ng g cl my-new-class


	ng g guard auth

crear modulo angular para servicios
	ng g m services/service --spec=false --flat
