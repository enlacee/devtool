instalar mysql en ubuntu: 
	
	https://www.sqlshack.com/how-to-install-mysql-on-ubuntu-18-04/
	https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql

sudo apt install mysql-server
mysql --version
systemctl status mysql.service 
sudo systemctl start mysql

sudo mysql_secure_installation


## crear usuarios mysql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;


## acces to database
mysql -u USERNAME -pPASSWORD -h HOSTNAMEORIP DATABASENAME 
# DUMP
mysqldump -h 192.168.1.27 -u USERNAME -p DATABASENAME > dump-2023-12-29.sql
