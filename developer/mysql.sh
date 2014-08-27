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