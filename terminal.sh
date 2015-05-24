# ver el peso de determinado disco o espacio
$ df -hT /boot

# comandos que frecuentemente usa
 history | awk '{print $2}' | sort | uniq -c | sort -rn | head
 # limpiar el historial
 history -c
 #
 history | tail -5
 # ip publicp
 curl ifconfig.me/ip
