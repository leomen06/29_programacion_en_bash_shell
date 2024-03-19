#!/bin/bash
# Programa para ejemplificar el uso de la iteración for.
# Autor: LMM - mi_email@dominio.com

arreglo_num=(1 2 3 4 5 6 7 8 9)

echo -e "Iteramos sobre la lista de numeros:"

for num in ${arreglo_num[*]}
do 
	echo -e "numero: $num"
done

echo -e "Iterando en una lista de cadenas\n"

for nom in "cadena_01" "cadena_02" "cadena_03"
do 
	echo -e "Cadena: $nom"
done

echo -e "Iterar en los archivos de una carpeta\n"
# el * indica que son todos los archivos donde estamos parados.
for files in *
do
	echo -e "Archivo: $files\n"
done

echo -e "Iterar utilizando un comando"

for files in $(ls)
do 
	echo -e "Archivos comando ls:$files\n"
done

echo -e "Iterar usando el formato tradicional"

for ((i=1; i<10; i++))
do
	echo "numero: $i"
done
