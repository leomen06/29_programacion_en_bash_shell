#!/bin/bash
# Programa para ejemplificar como escribir con echo y cat en un archivo.
# Autor: LMM - mi_email@dominio.com

#Primer Forma: Escribimos con el comando echo
#Lo que pasemos en el segundo argumento (texto) se pasara al primer argumento (el archivo)
echo "Texto pasado con echo --> $2" >> $1

#Segunda Forma: Adision Multilinea, escribimos con el comando cat, EOL=End Of Line, esta palabra se convertirá en una palabra reservada, puede ser cualquiera pero la sentencia debe terminar con la misma palabra.
#lo que reciba el segundo argumento será escrito en el archivo pasado en el primer argumento.
cat <<EOL >>$1
$2 "texto pasado con cat"
EOL
