#!/bin/bash
# Programa para ejemplificar como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento, para optimizar la velocidad de transferencia.
# Autor: LMM - mi_email@dominio.com

host=""
user=""

echo -e "\nEmpaquetar todos los scripts de la carpeta shell_course y transferirlos por la red a otro equipo utilizando el comando rsync\n"
read -p "ingrese el host al cual nos conectaremos:" host
read -p "ingrese el usuario:" user
echo -e "\nen este momento se procede a empaquetar la carpeta y transferir segun los datos ingresados... "
#-avz --> mantiene (usuario, grupos,permisos,fecha y hora,enlaces simbólicos), comprime y transferir.
# P --> muestra el proceso.
rsync -avzP $(pwd) $user@$host:/mnt/c/User/mende/OneDrive/Escritorio
