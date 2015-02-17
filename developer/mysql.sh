-----------------------------------
:::::: mysql data relation
-----------------------------------
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE table;
SET FOREIGN_KEY_CHECKS=1;
# utf8
ALTER DATABASE <database_name> CHARACTER SET utf8 COLLATE utf8_unicode_ci;
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























