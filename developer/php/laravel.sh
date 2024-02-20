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

## generar tablas y regenerar tablas
	
	php artisan migrate:reset
	php artisan migrate



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

## Crear modelo y controlador con RESOURCE crud
	php artisan make:model Book -mc --resource



## Docs
	
	https://laravel.com/docs/10.x/filesystem

## autoload and artisan command usefuul

php artisan clear-compiled
php artisan cache:clear
php artisan config:clear
php artisan optimize


## error

1. No application encryption key has been specified.

php artisan key:generate
artisan config:cache # alternative if showed the error


2. test
    php artisan cache:clear
    php artisan test 
    php artisan test --env=testing


3. debug sql laravel model

\DB::enableQueryLog(); // Enable query log
# SQL CODE
dd(\DB::getQueryLog()); // Show results of log

# debug laravel PHP CODE
Log::info('Data result');
Log::info($data);
dump($data);

# print sql
$sql = $transactions->toSql();
echo $sql;

# BASH crear service *provider*
php artisan make:provider CvUploaderServiceProvider



    // Disable the model timestamps
    // public $timestamps = false;