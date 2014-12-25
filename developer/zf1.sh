#  ZF1
# Export for use zf tool
# /var/www/sites/zf1/bin # functional in files not FAT32
# OPTION 1 :
export PATH=$PATH:/w/sites/zf/bin # note error no permised
# OPTION 2 : create link simbolic
sudo ln -s /w/sites/zf/bin/zf.sh /usr/bin/zf
# use comand
zf show version

# Create project zend with module : *default*
zf create project myzend1
# create module
zf create module default
# important ever create one index in module default
zf create controller index index default
# create action 
create action successful --controller-name=Index -m default

# create model
zf create model User
zf create model User -m default # -m : indica modulo
# create db-adapter (db)
zf configure dbadapter "adapter=Pdo_Mysql&username=root&password=123456&dbname=myzend1"
# create table
zf create dbtable User user

# config for loader modules by defautl
# 01.IN : application/modules/default/Bootstrap.php
class Default_Bootstrap extends Zend_Application_Module_Bootstrap
{
}
# 02.IN : application/configs/application.ini
resources.modules[] =

# --------------------------------------------
# acceder al modulo promo and default
http://myzend1.local/promo
http://myzend1.local/default



# confi application.ini
# change module
resources.frontController.defaultModule = "frontend"
# .
