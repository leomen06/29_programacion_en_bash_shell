#!/bin/bash
# Programa para ejemplificar los if anidados.
# Autor: LMM - mi_email@dominio.com

nota=0
respuesta=""

echo -e "Ejemplo sentencias con if anidados\n"
read -n1 -p "Ingrese su nota (1 - 9):" nota
echo -e "\n"

if [ $nota -ge 7 ]; then
    echo -e "Aprobastes!!!\n"
    
    read -p "Seguiras cursando materias? (y/n):" respuesta
    
    if [ $respuesta == "y" ]; then
        echo -e "\n Muchas gracias por seguir con nosotros!!!"
    
    else
        echo -e "\nMucha suerte en tus proyectos!!!" 
    fi
else 
    echo "Reprobastes :("
fi
