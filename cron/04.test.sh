SQL=$(cat <<EOF
<VirtualHost *:80>
	ServerName local.local
	DocumentRoot /var/www/html/
	<Directory /var/www/html/>
		Options Indexes FollowSymLinks Multiviews
		AllowOverride All
		Order allow,deny
		allow from all
		RewriteEngine on
	</Directory>
	ErrorLog ${APACHE_LOG_DIR}/local.local-error.log
</VirtualHost>
EOF
)

echo "$SQL"
