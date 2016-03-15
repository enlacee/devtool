# install node
install paquetes 'npm'
# descargar tar node y compilar
# leer el archivo README.md
./configure
make
sudo make install


http://www.nodebeginner.org/index-es.html
# instalar express
    npm install express-generator -g
# comandos de ayuda express
express -h
# create app
express myapp
cd myapp
sudo npm install # install dependecias de tu proyecto
# create app 2
mkdir myapp
cd myapp
npm init
# agregar packetes a tu proyecto
npm install --save express@4.10.2 # importante la version
npm install --save socket.io
# error express y jade solucion in : /views/layout.jade
doctype html
html
  head
    title= title
    link(rel='stylesheet', href='/stylesheets/style.css')
  body!= body

# install node v4
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
