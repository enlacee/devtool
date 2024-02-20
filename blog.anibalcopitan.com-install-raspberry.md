install raspberry



-- errors 
	- signatures couldn't be verified because the public key is not available

	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ECCB6A56B22C536D

-- basic install
1. install basic packages

	sudo apt-get install software-properties-common

2. INSTALL MYST

	sudo apt-get install myst

	sudo service mysterium-node start
 	sudo service mysterium-node status

3. INSTALL PHP

	sudo apt install -y php7.3-common php7.3-cli php7.3-fpm libapache2-mod-php7.3
	sudo systemctl restart php7.3-fpm

`php7.3-fpm` usefull for php variables into apache config file