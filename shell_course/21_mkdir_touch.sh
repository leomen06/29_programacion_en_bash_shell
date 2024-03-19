#!/bin/bash
# Programa para ejemplificar el uso de la iteración for.
# Autor: LMM - mi_email@dominio.com

echo "Creando directorios y archivos"

if [ $1 == "dir" ]; then
	mkdir -m 764 $2
	echo "Directorio creado satisfactoriamente!!!"
elif [ $1 == "file" ]; then
	touch $2
	echo "Archivo creado satisfactoriamente!!!"
else
	echo "opcion no valida $1"
fi
