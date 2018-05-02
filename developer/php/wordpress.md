### usar TWIG en wordpress

Theme useful [timber starter-theme](https://github.com/timber/starter-theme)


####

configurar APACHE2 para que limitar recursos

<IfModule mpm_prefork_module>
	StartServers		3
	MinSpareServers		3
	MaxSpareServers		3
	ServerLimit			50
	MaxClients			50
	MaxRequestsPerChild	1000
</IfModule>


MYSQL CACHE
tener cuidado si tu web realmente no tiene necesiadad de constantes actualizacione en db
para su correcto funcionamiento Evaluar eso!:
To enable the MySQL query cache,
MYSQL CONFIG FILE

# enable 16 MB cache
query_cache_size = 16M

#########3
asegurate que apache no sirva el archivo de configuración
en .htaccess

<FilesMatch ^wp-config.php$>deny from all</FilesMatch>

### check security

plugin: WP-Security Scan

### desactivar actualizaciones wordpress

wp-config.php

	define( 'WP_AUTO_UPDATE_CORE', false );

functions.php

	add_filter( 'auto_update_plugin', '__return_false' );
	add_filter( 'auto_update_theme', '__return_false' );


#### lista de plugin utiles

* [WP CLI](https://wp-cli.org/) ejecutar tareas wordpress por consola
* [User Role Editor](https://es.wordpress.org/plugins/user-role-editor/) administrador de roles crud
* [Regenerate Thumbnails](https://pe.wordpress.org/plugins/regenerate-thumbnails/) regenerar images thumbnails and other sizes
*


#### API REST

we need to check URL

	http://local.soccer6.com/api/app/wp-json		# add file .htaccess
	http://local.soccer6.com/api/app/index.php/wp-json

install plugins

* WP-CLI
* WP REST API - OAuth 1.0a Server


	http://local.soccer6.com/api/app/oauth1/request
	http://local.soccer6.com/api/app/oauth1/request?oauth_consumer_key=zLffrutDSCxf&oauth_signature_method=HMAC-SHA1&oauth_timestamp=1517592635&oauth_nonce=mLmlom&oauth_version=1.0&oauth_signature=LTMSOj2O5m/LJcAxGAln3ljIzvo=





