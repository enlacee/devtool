# ! /bin/bash
# Limpiar papelera tareas repetitivas

# Variables
PAPELERA="$HOME/.local/share/Trash"

if [ -d $PAPELERA ]
then
	rm -rf $PAPELERA
	mkdir $PAPELERA
	echo "encontrado y limpiado."
else
	echo "no encontrado $PAPELERA"
fi
