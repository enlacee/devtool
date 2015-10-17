## 01 Install Bower
sudo npm install -g bower
## 02 crear archivo
touch .bowerrc
vim .bowerrc
## 03 Add format json para el directorio a instalar
{
  "directory": "assets/lib/"
}
## 04 Iniciar bower (sign)
bower init
## 05 Registrar plugin o libreria
bower install font-awesome --save
## 06 Alternativa cuando no existe repositorio para instalar
bower install '<git-url>#<git-commit-sha>'
bower install 'git://github.com/yeoman/stringify-object.git#d2895fb97d'