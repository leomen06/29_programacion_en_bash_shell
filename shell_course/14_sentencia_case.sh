#!/bin/bash
# Programa para ejemplificar el uso de la sentencia case.
# Autor: LMM - mi_email@dominio.com

opcion=""

echo -e "Ejemplo con sentencia case\n"
read -p "Ingrese una opcion de la A - Z: " opcion
echo -e "\n"

case $opcion in
	"A") echo -e "operacion guardar archivo\n";;
	"B") echo -e "operacion eliminar archivo\n";;
	[C-E]) echo -e "la operacion no esta implementada\n";;
	"*") "opcion inocrrecta"
esac	
