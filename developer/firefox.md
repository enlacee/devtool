### Firefox knowlegde

knowlegde about firefox contet feacture :smile:

## 1. Update flash player

* dowloader flash player tar
* sudo cp -r usr/* /usr
* libflashlayer.so copy in `/usr/lib/mozilla/plugins`
* finish.

## 2. Update firefox

	sudo apt-get update
	sudo apt-get upgrade

## 3. Development addons firefox

1. Install firefox version 34
2. Intall node and npm
3. Install `jpm`

	sudo npm install jpm -g

4. Para crear addons en firefox es recomendable ubicarse en
~/.mozilla/extensions/myaddons
5. crear carpeta del plugin eh ejecutar comandos

	mkdir my-addon
	cd my-addon
	jpm init

6. Ejecutar con browser firefox

	jpm test -b /usr/bin/firefox

***

### Apendice:

fuente : [mozilla addons](https://developer.mozilla.org/en-US/Add-ons/SDK/Tools/jpm)


### config thunderbird for open with google chrome

	Edit > Preferences

	open: config editor

	write: network.protocol-handler.warn-external

On linux set path where is google-chrome: (execute this command) ´/usr/bin/google-chrome´

	whereis google-chrome
	which python

