## 01 create project

	composer create-project --prefer-dist laravel/laravel blog
	composer create-project laravel/laravel  APIRESTLaravel 5.5.*

# 02 install dependencies npm

	npm install 
	# or use yarn
	yarn

# 03 use auth command for generate layout on appxyz/resources/views/layouts/app.blade.php

	php artisan make:auth

# 04 generar data

	php artisan migrate
	# elimina despues crear  y ejecuta los seed (crear usuarios)
	php artisan migrate:fresh --seed


##
	# crear tabla alumnos
	php artisan make:migration create_alumnos_table
	# crear mas campos a la tabla users
	php artisan make:migration add_extra_field_to_users_table --table=users
	# si llenar de data
	php artisan migrate:fresh --seed

## crear un modelo(tabla) y la migracion -m genera la migracion

	php artisan make:model Article -m
	# ejecutar denuevo si agregaste o modificaste
	php artisan migrate


## crear seeder
	php artisan make:seeder RolesTableSeeder

## crear controller formato API
## ref = https://www.toptal.com/laravel/restful-laravel-api-tutorial
##
	php artisan make:controller RolController --resource # API REST preseter
	php artisan make:controller RolController --resource --model=Rol # avanzado enlazado con el modelo
	#simple
	php artisan make:controller RolController
	#crear el controlador para User (laravel default)
	php artisan make:controller UserController -m User


## crear modelo,factory, migration, controller
	php artisan make:model Product --all