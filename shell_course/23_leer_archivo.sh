#!/bin/bash
# Programa para ejemplificar como leer en un archivo.
# Autor: LMM - mi_email@dominio.com

echo -e "\nPrimer forma de leer un archivo --> con un argumento:\n"
cat $1 

echo -e "\nsegunda forma de leer un archivo --> almacenando en una variable:\n"
valor_cat=`cat $1`
echo -e "Texto almacenado en la variable:\n $valor_cat\n"

#Tercer forma de leer un archivo --> con while:
#Se utiliza al variable IFS (Internal File Separator), para evitar que los espacios en blanco, al inicio y al final, sean recortados o se supriman.
echo -e "Tercer forma leer archivo linea por linea usando while\n"
while IFS= read linea
do
	echo "$linea"
#el archivo que viene en el primer argumento
done < $1
