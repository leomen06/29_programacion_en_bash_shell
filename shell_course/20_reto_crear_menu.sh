#!/bin/bash
#Programa para mostrar menu y opciones.
#Autor: LMM - my_email@dominio.com

opciones=0

while :
do
	clear 
	echo "__________________________________"
	echo "         Menu - Principal         "
	echo "__________________________________"
	echo -e "\n"
	echo "1. Procesos Actuales"
	echo "2. Memoria Disponible"
	echo "3. Espacio en Disco"
	echo "4. Informacion de Red"
	echo "5. variables de Entorno Configuardas"
	echo "6. Informacion del Programa"
	echo "7. BackUp informacion"
	echo "8. Salir"
	echo "__________________________________"
	read -n1 -p "Ingrese una opcion: " opciones
	case $opciones in 
		1) 
			echo -e "\nDescribiendo porcesos actuales...."
			sleep 3
			;;

		2) 
			echo -e "\nCalculando Memoria Disponible....."
			sleep 3
			;;

		3) 
			echo -e "\nCalculando Espacio en Disco......"
			sleep 3
			;;

		4) 
			echo -e "\nInformacion de Red......"
			sleep 3
			;;

		5) 
			echo -e "\nMostrando Variables de Entorno....."
			sleep 3
			;;

		6) 
			echo -e "\nRecuperando Informacion del Programa....."
			sleep 3
			;;

		7) 
			echo -e "\nRealizando BackUp......"
			sleep 3
			;;

		8) 
			echo -e "\n"
			exit 0
			;;
	esac
done




























