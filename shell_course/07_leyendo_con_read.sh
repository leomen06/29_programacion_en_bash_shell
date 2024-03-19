# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando "read".
# Autor: LMM - mi_email@dominio.com

option=0
back_up_name=""

echo -e "Programa de utilidades Postgres"

# reemplazamos "echo" por "read", con "-p" para poder leer la información ingresada, más el nombre de la variable donde se almacenará.
read -p "Ingresar una opción: " option

#Repetimos el proceso.
read -p "Ingresar el nombre del back-up:" back_up_name

#Finalmente imprimimos las variables
echo -e "\nOption: $option, Back-Up name: $back_up_name"
