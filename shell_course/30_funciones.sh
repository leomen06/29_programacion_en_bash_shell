#!/bin/bash
# Programa para ejemplificar el uso de un menu y sus opciones con sus funciones correspondientes.
# Autor: LMM - mi_email@dominio.com

opciones=0
fecha_actual= date +%y%m%d 

#definimos cada funcion
instalar_postgres () {
	echo "verificarndo si ya existe instalación de postgres..."
	verify_psql_instalation=$(which psql)
        
	#$? devuelve el estado del ultimo comando ejecutado --> "0" ejecutado "1" no ejecutado (significa que no encontro nada)
	if [ $? -eq 0 ]; then
		echo -e "\nPostgres ya se encuentra instalado en el equipo"
  	else
		read -s -p "ingrese contraseña sudo: " sudo_pass
		echo -e "\n"
		read -s -p "ingresar contraseña a utilizar en Postgres" postgres_pass
		echo -e "\n"
		read -s -p "re ingres la contraseña de Postgres" postgres_repass
		#validación de Postgres password
		if [ $postgres_pass == $postgres_repass ]; then
			echo -e "\nla contraseña de postgres fue validada"
		else
			echo -e "\nlas contraseñas de postgres no coinciden"
		fi
		#pasamos el password con echo (no lo pasa por pantalla) al comando sudo usadon el pipe "|", -S no muestra la contraseña
		echo "$sudo_pass" | sudo -S apt update
		#hacemos lo mismo pero para instalar Postgres (el paquete contrib contiene extensiones, herramientas o funciones adicionales), lo anterior es un update de apt.
		echo "$sudo_pass" | sudo -S apt-get install postgresql postgresql-contrib
		#realizamos la modificacion de la contraseña de postgres, -u --> user, -c --> ejecutamos un comando
		sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$postgres_pass}';"
		#habilitar los servicios
		echo "$sudo_pass" | sudo -S systemctl enable postgresql.service
		echo "$sudo_pass" | sudo -S systemctl start postgresql.service
	fi	  
	#el usuario tiene que presionar ENTER para que la funcion continue.
	read -n 1 -s -r -p "presione ENTER para continuar..."
}

desinstalar_postgres () {
	read -s -p "ingresar contraseña sudo..." sudo_pass
	echo -e "\n"
	echo "$sudo_pass" | sudo -S systemctl stop postgresql.service
	echo "$sudo_pass" | sudo -S apt-get -y --purge remove postgresql\*
	echo "$sudo_pass" | sudo -S rm -r /etc/postgresql
	echo "$sudo_pass" | sudo -S rm -r /etc/postgresql-common
	echo "$sudo_pass" | sudo -S rm -r /var/lib/postgresql
	echo "$sudo_pass" | sudo -S userdel -r postgres
	echo "$sudo_pass" | sudo -S gruopdel postgresql
	read -n 1 -s -r -p "presione ENTER para continuar..."
} 

sacar_respaldo () {
	
	echo "listando las bases de datos existentes..."
	# \l lista las bases de datos existentes.
	sudo -u postgres psql -c "\l"
	read -p "elegir la base de datos a respaldar: " ddbb_respaldar
	echo -e "\n"
	read -p "dirección donde se hara el back-up: " dir_back_up
	if [ -d "$dir_back_up" ]; then
		echo -e "\nestablecer permisos al directorio"
		read -s -p "ingrese contraseña de sudo:" sudo_pass
		echo "$sudo_pass" | sudo -S chmod 755 $dir_back_up
		echo -e "\nrealizando respaldo"
		sudo -u postgres pg_dump -Fc $ddbb_respaldar > "$dir_back_up/ddbb_respaldo_$fecha_actual.bak"
		echo -e "\nrespaldo creado con exito en $dir_back_up/ddbb_respaldo_$fecha_actual.bak"
	else
		echo -e "\nel directorio no existe"
	fi
	read -n 1 -s -r -p "presione ENTER para continuar..."
}

restaurar_respaldo () {
	echo -e "Listar los respaldos\n"
	read -p "Ingresar el directorio donde están los respaldos:" respaldos_back_up
	ls -lac $respaldos_back_up
	read -p "elija el respaldo a restaurar:" respaldo_a_restaurar
	echo -e "\n"
	read -p "ingrese el nombre de la ddbb destino:" ddbb_destino
	#verificar se la ddbb_destino existe
	verify_ddbb= $(sudo -u postgres psql -lqt | cut-d \ | -f 1 | grep -wq $ddbb_destino)
	if [ $? -eq 0 ]; then
		echo -e "\nrestaurando en la ddbb destino"
	else 
		sudo -u postgres psql -c "create database $ddbb_destino"
	fi
	if [ -f $respaldos_back_up/$respaldo_a_restaurar ]; then
		echo -e "\nreaturando respaldo..."
		sudo -u postgres pg_restore -Fc -d $ddbb_destino "$respaldos_back_up/$respaldo_a_restaurar"
		echo -e "\nlistar las bbdd"
	       	sudo -u postgres psql -c "\l"
	else 
		echo -e "\nel respaldo $respaldo_a_restaurar no existe"
	fi
	read -n 1 -s -r -p "presione ENTER para continuar..."	
}

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
			instalar_postgres
			#el programa duerme por 3 segundo
			sleep 3
			#;; para! ... como si estuviera instalando Postgres
			;;
		2)
			desinstalar_postgres
			sleep 3
			;;
		3)
			#solicitamos se carge un directorio para hacer back-up
			read -p "directorio back-up: " dir_back_up
			#pasamos la funcion y el argumento
			sacar_respaldo $dir_back_up
			sleep 3
			;;
		4)
			#solicitamos el directorio donde se guardara.
			read -p "directorio respaldo: " dir_respaldo
			restaurar_respaldo $dir_respaldo
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del Programa....."
			#para romper la ejecucion
			exit 0
			;;
	esac
done
