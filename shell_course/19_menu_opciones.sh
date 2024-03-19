#!/bin/bash
# Programa para ejemplificar el uso de un menu y sus opciones.
# Autor: LMM - mi_email@dominio.com

opciones=0
# while : loop infinito hasta obtener un parámetro de salida o sentencia de salida.
while :
do
	#limpiar la pantalla
	clear
	#desplegamos menu de opciones
	echo "__________________________________________"
	echo "PGUTIL - Programa de Utilidades de Posgres"
	echo "__________________________________________"
	echo "             MENU - PRINCIPAL             "
	echo "__________________________________________"
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar un Respaldo"
	echo "4. Restablecer Respaldo"
	echo "5. Salir"
	#Leer los datos del usuario.
	read -n1 -p "Coloque una opcion [1-5]:" opciones
	#Validando opciones, instalacion fake!!!
	case $opciones in 
		1) 
			echo -e "\nInstalando Postgres....."
			#el programa duerme por 3 segundo
			sleep 3
			#;; para! ... como si estuviera instalando Postgres
			;;
		2)
			echo -e "\nDesinstalando Postgres....."
			sleep 3
			;;
		3)
			echo -e "\nSacando Respaldo Postgres....."
			sleep 3
			;;
		4)
			echo -e "\nRestableciendo Respaldo Postgres....."
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del Programa....."
			#para romper la ejecucion
			exit 0
			;;
	esac
done
