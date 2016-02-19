# ! /bin/bash
# create backup
# comprimir:
# tar -zcvf /home/Escritorio compress.tar.gz
# descomprimir:
# tar -zxvf merge.esika.tar.gz -C /home/anb/Documentos/



BASE="$HOME/Escritorio"
ME_DATE=`date +%Y-%m-%d:%H:%M:%S`
FOLDER_SYNC="$HOME/AnibalSync"
N_COMPRESS="$BASE.$ME_DATE.tar"

if [ -d $BASE ]
then
	tar -zcvf $N_COMPRESS $BASE
	if [ -d $FOLDER_SYNC ]
	then
		echo ">>> Directorio: $FOLDER_SYNC"
		echo ">>> ya existe"
	else
		mkdir $FOLDER_SYNC
	fi

	mv $N_COMPRESS $FOLDER_SYNC
	echo ">>> Comprimido: $N_COMPRESS"
	echo ">>> En: $FOLDER_SYNC"
else
	echo "archivos no encontrado: $BASE"
fi
