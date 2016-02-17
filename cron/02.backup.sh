# ! /bin/bash
# create backup
BASE="$HOME/Escritorio"
ME_DATE=`date +%Y-%m-%d:%H:%M:%S`
FOLDER_SYNC="$HOME/AnibalSync"

if [ -d $BASE ]
then
	N_COMPRESS="$BASE.$ME_DATE.tar"
	tar -zcvf $N_COMPRESS $BASE
	if [ -d $FOLDER_SYNC ]
	then
		echo ">>> directorio ya existe"
	else
		mkdir $FOLDER_SYNC
	fi

	mv $N_COMPRESS $FOLDER_SYNC
else
	echo "archivos no encontrado: $BASE"
fi
