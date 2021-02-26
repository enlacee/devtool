# configuracion del servidor proxy squid
# GO TO FILE LINE -> # INSERT YOUR OWN RULES
# on  < include /etc/squid/conf.d/*>  debian.conf MODIFIED
# or uncoment for ALLOW ALL LOCAL NETWORK
http_access allow localnet


# estart service 
sudo /etc/init.d/squid restart
sudo /etc/init.d/squid status


# tets ping proxy access: return 200 status
curl -x http://192.168.1.25:3128 -I https://google.com



# BLOQUEAR PAGINAS WEB en /etc/squid/squid.conf

# bloquear paginas web como redes sociales
# 1. create file etc/squid/blocked.acl
.facebook.com
.twitter.com
# 2. agregar sentencia debajo de acl instucciones
# debajo de los ACL
# acl CONNECT method
acl blocked_websites dstdomain “/etc/squid/blocked.acl”
http_access deny blocked_websites





####
## CONFIGURAR PROXY TRASPARENTE
###

## configura el puerto
https_port 3128 intercept



sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to 192.168.1.25:3128



