# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando "read".
# Autor: LMM - mi_email@dominio.com

id_number_regex='^[0-9]{10}$'
pais_regex='^(EC)|(CO)|(US)$'
fecha_nacimiento_regex='^19|20[0-9]{2}-[0-9]{2}-[0-9]{2}$'

echo -e "\nValidación con RegEx\n"

# reemplazamos "echo" por "read", con "-p" para poder leer la información ingresada, más el nombre de la variable donde se almacenará.
read -p "Ingresar un id_number(10 dígitos): " id_number

#Repetimos el proceso.
read -p "Ingresar opción país (EC, CO, o US): " pais

read -p "Ingresar fecha de nacimiento (yyyy-mm-dd): " fecha_nacimiento

#Validación de id_number:
if [[ $id_number =~ $id_number_regex ]]; then
    echo "id_number: $id_number validado correctamente!!!"
else 
    echo "id_number: $id_number invalido :("
fi

#Validación país:
if [[ $pais =~ $pais_regex ]]; then
    echo "pais: $pais validado correctamente!!!"
else
    echo "pais: $pais invalido :("
fi

#Validación fecha de naciemiento:
if [[ $fecha_nacimiento =~ $fecha_nacimiento_regex ]]; then
    echo "Fecha Nacimiento: $fecha_nacimiento validado correctamente!!!"
else
    echo "Fecha Nacimiento: $fecha_nacimiento invalida :("
fi
