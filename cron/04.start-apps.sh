# ! /bin/bash
# Ejecutar programas de preferencia

APP[0]='google-chrome'
APP[1]='thunderbird'
APP[2]='atom'

for element  in ${APP[@]}
do
	echo $element
	eval $element
done
