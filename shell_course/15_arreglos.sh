#!/bin/bash
# Programa para ejemplificar el uso de arreglos.
# Autor: LMM - mi_email@dominio.com

arreglo_num=(1 2 3 4 5 6 7 8 9)
arreglo_cadenas=(cadena_01, cadena_02, cadena_03, cadena_04)
arreglo_rangos=({A..Z} {10..20})

echo -e "Imprimiendo todo el arreglo de numeros: ${arreglo_num[*]}\n"

echo -e "Imprimiendo todo el arreglo de cadenas: ${arreglo_cadenas[*]}\n"

echo -e "Imprimiendo todo el arreglo de rangos: ${arreglo_rangos[*]}\n"


echo -e "Imprimiendo el tamaño del arreglo de numeros: ${#arreglo_num[*]}\n"

echo -e "Imprimiendo el tamaño del arreglo de cadenas: ${#arreglo_cadenas[*]}\n"

echo -e "Imprimiendo el tamaño del arreglo de rangos: ${#arreglo_rangos[*]}\n"


echo -e "Imprimiendo posicion 3 en arreglo de numeros: ${arreglo_num[3]}\n"

echo -e "Imprimiendo posicion 3 en arreglo de cadenas: ${arreglo_cadenas[3]}\n"

echo -e "Imprimiendo posicion 3 3n arreglo de rangos: ${arreglo_rangos[3]}\n"

#Sustituyendo la posición 7.
arreglo_num[7]=20

#Eliminando la primer posición.
unset arreglo_num[0]

echo -e "arreglo de numeros: ${arreglo_num[*]}"
echo "tamaño del arreglo: ${#arreglo_num[*]}"

