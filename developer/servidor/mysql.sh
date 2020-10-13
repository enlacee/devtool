# error socket mysql and config
# @url : https://www.node35.com/how-to-fix-mysql-plugin-auth_socket-is-not-loaded/


mysqldump -u root -p --all-database > dump.sql
mysqldump -u root -p database_name > database_name.sql

# conect to server remote
mysql -u root -p -h 44.55.66.77