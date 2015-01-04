#-----------------------------------
#:::::: INSTALAR SERVIDOR
#-----------------------------------
# install LAMP
sudo apt-get install tasksel
sudo tasksel install lamp-server
# rewrite apache
sudo a2enmod rewrite && sudo service apache2 restart
# in : /etc/apache2/sites-available (habilitar sobreescritura)
# <Directory /var/www/>
# before :
AllowOverride None
# after :
AllowOverride all
#-----------------------------------
#:::::: Congigurar git in shell .sh shell
#-----------------------------------
# intall prompt SHELL modific on final (~.bashrc)
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[00m\]\u@\h\[\033[01;33m\] \w \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

