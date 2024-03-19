#!/bin/bash
# Programa para ejemplificar el uso de break y continue.
# Autor: LMM - mi_email@dominio.com

echo -e "Sentecia break y continue\n"
for file in $(ls)
do
	for id in {1..2}
	do
		if [ $file == "10_download_con_wget.sh" ]; then
			break
		elif [[ $file == 04* ]]; then
			continue
		else 
			echo -e "nombre archivo: $file _ $id"
		fi
	done
done
