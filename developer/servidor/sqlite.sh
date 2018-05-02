# importar sql from mysql
# remover sql no support
sudo apt-get install sqlite3
#
sqlite3 database.sqlite3 < /var/www/html/users.sql
