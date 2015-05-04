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