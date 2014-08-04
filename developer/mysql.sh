-----------------------------------
:::::: mysql data relation
-----------------------------------
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE table;
SET FOREIGN_KEY_CHECKS=1;

# utf8
ALTER DATABASE <database_name> CHARACTER SET utf8 COLLATE utf8_unicode_ci;
# mysql import
-- 01
mysql -u root -p
source file.sql
-- 02
mysql -u username -p database_name < file.sql
mysqldump -u root -p ac_gym > sql.sql
# options
-d, --no-data

# -------- phphack -------
mysqladmin --user root --password=123456 create db_name
mysqladmin --user root --password=123456 drop db_name
mysqladmin --user root --password=123456 drop -f db_name
# updade sql
mysql --user root --password=123456 test1 < dump_ac_gym.sql
# INSTALL PEAR
sudo apt-get install php-pear
sudo pear install HTTP_Client
# list of available  PEpear list
# list of local or general (pear system Internet)
pear list
pear list-all
#hack reproductor de musica
http://www.xspf.org/
http://www.xspf-player.com/download.html