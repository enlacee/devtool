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


###
# SERVERLESS
###
# Create project with serverless
serverless create -t aws-nodejs -p aws-nodejs

## create project with template aws provider
serverless create --template aws-nodejs --name curso-sls-hola-mundo

### aws
serverless config credential --provider aws --key xxx1 --secret xxx2


### invocar functiones LAMBDA
## Invocar la function hello (lambda) que esta en el stage dev file=serverless.yml
sls invoke -f hello -s dev
## en LOCAL
sls invoke local -f hello -s dev


### despleygar en AWS
sls deploy
## subir solo una function
sls deploy function -f helloUser ## handler.js module.exports.helloUser = ()=>{};

###
### trabajar OFFLINE LAMBDA Y APIGAYWAY
###
npm install serverless-offline --save-dev
### 1. add into file: serverless.yml
plugins:
  - serverless-offline
### 2. execute comand to enable service
serverless offline
sls offline
sls offline --help