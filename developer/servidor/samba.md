### config samba in Ubuntu
![how to create network share](https://goo.gl/0M3IWn)

#### 01
sudo apt-get update
sudo apt-get install samba

#### 02 (add user existent and with permission read and write)
sudo smbpasswd -a <user_name>

#### 03 create a directory to be shared
mkdir /home/anb/Public

#### 04 make a safe backup `smb.conf`
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.copia

#### 05 edit the file `/etc/samba/smb.conf`
sudo vim /etc/samba/smb.conf

#### 06 restart samba
sudo service smbd restart

#### 07 once samba has restarted, use this command
testparm

#### 08
sudo apt-get install smbclient
# list all shares:
smbclient -L //<HOST_IP_OR_NAME>/<folder_name> -U <user>
# connect:
smbclient //<HOST_IP_OR_NAME>/<folder_name> -U <user>

To access your network share use your username (<user_name>) and password theought path

	smb://
	smb://anb-t430s/		#linux
	smb://pc1@pc1-pc/ 		#windows


#### config `smb.conf` add next text

	[Public]
	path = /home/anb/Public
	valid users = anb
	read only = no
	hosts allow = 192.168.0.
	hosts deny = ALL
	guest ok = yes
	browseable = yes


#### obs check name workgroun for all computer
	
	workgroup:	WORKGROUP