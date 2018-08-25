## track wireless

Check wireless local *common*  
Find all used IP addresses on my network

```bash
sudo apt-get install nmap
```
### NMAP
```bash
# muestra host con MAC Address
sudo nmap -sP 192.168.1.0/24 
nmap -sn 192.168.1.0/24
```


### Protocolos
21 FTP
80 HTTP
110 POP3
139 NetBios
445 SMB (NetBios over TCP)

# 
Ver conecciones de IP
```bash
arp
arp -n
```
### pilares de hacking

- integridad =! sitema modificado
- disponibilidad =! servicio caido
- confidencialidad =!cuando se comparte informacion

### vector de ataque
mala configuracion, contraseña  

* Base de datos de exploit  [exploit database VER](https://www.exploit-db.com/)
* Contraselas por defecto
* Guias de fortificación

* framewoks de ataques
	* nessus
	* metassploit  

### Herraminta

* GFI lan Guard *mira bug en RED PC*
* Acunetix web
* Nessus *ver host, puertos, UNIX*
* OpenVas *igual a nessus*


### HACK WIFI
configurar en windows para ver mac adrress o phisical address
en CMD

	ipconfig /all

	PC=0A-00-27-00-00-14
	FIRE=6C-56-97-B1-48-2D
	IPHONE-ERROR=A4-E9-75-39-04-C7

	
