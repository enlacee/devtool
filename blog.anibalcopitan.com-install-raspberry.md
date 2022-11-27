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
