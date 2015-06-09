-----------------------------------
:::::: mysql data relation
-----------------------------------
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE table;
SET FOREIGN_KEY_CHECKS=1;
# utf8 : database
ALTER DATABASE <database_name> CHARACTER SET utf8 COLLATE utf8_unicode_ci;
# utf8 : table
ALTER TABLE tablename CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
# mysql import
# -- 01
mysql -u root -p
source file.sql
#-- 02
mysql -u username -p database_name < file.sql
mysqldump -u root -p ac_gym > sql.sql
#options
-d, --no-data
# mysql 
show columns from table
# config all privileges
 mysql -u root -p
 > GRANT ALL PRIVILEGES ON `cha\_%`.* TO 'cha'@'localhost'
 IDENTIFIED BY 'p4s5wOrd';
 > FLUSH PRIVILEGES;
 > exit;

 #querys buscar en base de datos campos o field
SELECT table_name,table_schema
FROM INFORMATION_SCHEMA.COLUMNS
WHERE column_name = 'columna_x'
-----------------------------------
:::::: show uft8 and others
-----------------------------------
-- Mostrar los CHARSETs instalados:
SHOW CHARACTER SET;
-- Mostrar COLLATIONS instalados:
SHOW COLLATION;
-----------------------------------
:::::: database utf8
-----------------------------------
# create databse sql
CREATE DATABASE mydb
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci; 
# config in server mysql  
[mysqld]
character-set-server=utf8
collation-server=utf8_general_ci  
# ALTER by table
alter table <some_table> convert to character set utf8 collate utf8_unicode_ci;
# Busqueda en mysql
# Full-text Search Function
 file gist

# show databases;
# CREAR USUARIO MYQSL
CREATE USER 'redmine'@'localhost' IDENTIFIED BY '123456';
# dando privilegios
GRANT ALL PRIVILEGES ON * . * TO 'redmine'@'localhost';
# eliminar base de datos
DROP DATABASE redmine_dev;
# reiniar mysql
sudo /etc/init.d/mysql restart
# otros mysql
service mysqld status
service mysqld stop
service mysqld start 

# mysqld.sock
[client]
port        = 3306
#socket     = /var/run/mysqld/mysqld.sock
socket      = /var/lib/mysql/mysql.sock

# buscar socket 
mysql_config --socket
### install mysql
sudo apt-get install mysql-server 





##
### CODE
##

### Util MYSQL replazar caracteres extraños:
# remplazar ñ
    update tabla set campo = replace(campo, 'Ã±', 'ñ');

# util remplazar
	UPDATE table SET field = REPLACE(field, 'string', 'anothervalue') WHERE field LIKE '%string%';
# obtener string de la primera segunda posicion
	SELECT SUBSTRING_INDEX('www.mytestpage.info','.',2);  

# installar depencias
sudo dpkge -i programa.deb 
sudo apt-get -f install

#error workbench
sudo apt-get purge mysql-workbench* 
sudo dpkg --force-all -i mysql-workbench-community-6.0.6-1ubu1204-i386.deb 

# para instalar una determinada version ir AL SYNAPTIC PACKAGE
# ir y remover los nuevos link de los repositorios de descarga.
# despues instalar  los paquetes de la version anterios EN ESTE CASO mysql 5.6
# 
# opcional agregar repositorio mysql 5.6
apt-get -y remove mysql-server
apt-get -y autoremove
apt-get -y install software-properties-common
add-apt-repository -y ppa:ondrej/mysql-5.6
apt-get update
apt-get -y install mysql-server

## install por primera vez
apt-get install php5-mysqlnd

## ver proceso mysql
watch -n 1 mysqladmin --user=root --password=123456 processlist


## error al eliminar tablas relacionadas
# resolver poniendo las tablas = ON DELETE CASCADE 


## truncar tabla sin error forenkey
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE articles; 
SET FOREIGN_KEY_CHECKS = 1;


## mysql query update : update massivo
UPDATE `especialities` SET
`status_especiality` = '1'
WHERE `relevance_especiality`  > 0
