# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando "echo", "read", y "$REPLY".
# Autor: LMM - mi_email@dominio.com

option=0
back_up_name=""

echo -e "Programa de utilidades Postgres"

# -n es para utilizar una nueva línea
echo -n "Ingresar una opción: "
# con read leemos la opción ingreasada
read 
# guardamos la opción leída.
option=$REPLY

#Repetimos el proceso.
echo -n "Ingresar el nombre del back-up:"
read
back_up_name=$REPLY

#Finalmente imprimimos las variables
echo -e "\nOption: $option, Back-Up name: $back_up_name"
