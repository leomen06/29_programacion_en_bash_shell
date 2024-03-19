# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando "read".
# Autor: LMM - mi_email@dominio.com

option=0
back_up_name=""
clave=""

echo -e "Validando datos con read"

#Agregamos el flag "-n1" que reconoce 1 solo caracter para option
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
#Repetimos el proceso pero con "-n10".
read -n10 -p "Ingresar el nombre del back-up:" back_up_name
echo -e "\n"
#Ahora usamos el flag "-s" silence
read -s -p "Ingresar la clave:" clave
#Finalmente imprimimos las variables
echo "Clave: $clave"
#IMPORTANTE!!! el flag "-n12", por ejemplo, valida la cantidad de caracteres, no el tipo de caracteres.
