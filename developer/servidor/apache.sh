#-----------------------------------
#:::::: UTF8 defaul
#-----------------------------------
AddDefaultCharset utf-8
# config .htaccess
php_value date.timezone 'Europe/London'
# ver buscar "User"  :: nombre de usuario apache
/etc/apache2/apache2.conf
/etc/apache2/envvars
# other
AddType video/x-flv .flv
AddType video/x-flv flv
# ver version de apache
apache2ctl -v
#config no www
# Force the www.
RewriteEngine On
RewriteCond %{HTTP_HOST} ^your-site.com [NC]
RewriteRule ^(.*)$ http://www.your-site.com/$1 [L,R=301]
# Remove the www.
RewriteEngine On
RewriteCond %{HTTP_HOST} !^your-site.com$ [NC]
RewriteRule ^(.*)$ http://your-site.com/$1 [L,R=301]
# activar y desactivar un modulo
a2enmod rewrite # activar
a2dismod rewrite # desactivar
a2dismod pagespeed #desactivar
# desactivar pagespeed in /etc/apache2/mods-available/pagespeed.conf
# update to Off
 ModPagespeed off


 ##############################################
 ## crear virtual host
 ## importante habilitar  :: rewrite
 ## siempre apuntar desde /var/www/html
 ## html = /home/anb/sites
 ##############################################
<VirtualHost *:80>
    ServerName asiste.app
    DocumentRoot "/var/www/html/develoweb/asistemas/webservice/public"
    <Directory /var/www/html/develoweb/asistemas/webservice/public>
        DirectoryIndex index.php
        AllowOverride All
        Order allow,deny
        Allow from all
    </Directory>
</VirtualHost>



########################
# NGINX
########################
sudo service nginx stop

########################
# configurar cache expiracion para el browser
########################
#activar modulo
sudo a2enmod expires
# set file .htaccess (1)
ExpiresActive on
ExpiresByType image/jpg "access plus 1 month"
ExpiresByType image/jpeg "access plus 1 month"
ExpiresByType image/gif "access plus 1 month"
ExpiresByType image/png "access plus 1 month"
ExpiresByType text/css "access plus 1 month"

# acivar set file.htaccess (2)
ExpiresActive on
# Media
ExpiresByType audio/ogg                             "access plus 1 month"
ExpiresByType image/gif                             "access plus 1 month"
ExpiresByType image/jpeg                            "access plus 1 month"
ExpiresByType image/png                             "access plus 1 month"
ExpiresByType video/mp4                             "access plus 1 month"
ExpiresByType video/ogg                             "access plus 1 month"
ExpiresByType video/webm                            "access plus 1 month"

# Web feeds
ExpiresByType application/atom+xml                  "access plus 1 hour"
ExpiresByType application/rss+xml                   "access plus 1 hour"

# Web fonts
ExpiresByType application/font-woff                 "access plus 1 month"
ExpiresByType application/font-woff2                "access plus 1 month"
ExpiresByType application/vnd.ms-fontobject         "access plus 1 month"
ExpiresByType application/x-font-ttf                "access plus 1 month"
ExpiresByType font/opentype                         "access plus 1 month"
ExpiresByType image/svg+xml                         "access plus 1 month"

########################
# configurar cache expiracion en apache
# Cache-Control:max-age=604800, public
########################
# activar o verificar este servicio
sudo a2enmod headers

# set file
<IfModule mod_headers.c>
    # WEEK
    <FilesMatch "\.(jpg|jpeg|png|gif|swf)$">
        Header set Cache-Control "max-age=604800, public"
    </FilesMatch>
</IfModule>

####################
# evalucacion comparativa *benchmark*
####################
# Activar Apache benchmark *ab* test de request web basica

	apt-get install apache2-utils

# utilizar por consola
ab -n 500 -c 20 http://example.com/

#
sudo aptitude install siege
## activar el modulo php
## fix:error lee el archivo como si fuera texto plano
sudo apt-get install libapache2-mod-php