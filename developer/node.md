# node

### App Node
Iniciar una aplicacion con NPM
``` bash
npm init
```
Instalar dependencias registrando todo en el archivo de autoinstalación
`package.json` 
``` bash
# 01
npm install express-generator -g
#02
npm install --save express@4.10.2 # importante la version
npm install --save socket.io
```
  
### Aplicaciones Node Utiles

* [servedir](https://github.com/remy/servedir): genera servidor por medio de carpetas
* [express](http://expressjs.com/): servidor web
* [superagent](https://github.com/visionmedia/superagent): 


### Snaks

# error express y jade solucion in : /views/layout.jade
doctype html
html
  head
    title= title
    link(rel='stylesheet', href='/stylesheets/style.css')
  body!= body


### dar permisos npm

[npm fix missing write access](https://flaviocopes.com/npm-fix-missing-write-access-error/)

sudo chown -R $USER /usr/local/lib/node_modules