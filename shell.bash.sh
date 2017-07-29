#---------------------------------
# :::: Que es una terminal shell bash
#---------------------------------
The terminal program is just a graphical interface to the shell.
The shell is what actually handles commands and so forth;
the terminal program just gives it a way to interact with the graphical environment.

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
 # ver el tamaño
 $ df -hT /boot

### clone website
wget -k -p -nH -N http://browservictim.com

### config my terminal with *oh-my-zsh*
