#!/bin/bash
#Programa para ejecutar las expresiones condicionales.
#Autor: LMM el_mail@dominio.com

edad=0
pais=""
file_path=""

echo -e "\nPor favor responda:\n"

read -p "Cual es tu edad?:" edad
read -p "Cual es tu pais?:" pais
read -p "Cual es el path de tu archivo:" file_path


echo -e "\nEjecutar expresiones condicionales con numeros\n"
if [ $edad -le 10 ]; then
    echo -e "La persona es un ninio/a!!!\n"

elif [ $edad -gt 10 ] && [ $edad -lt 18 ]; then
    echo -e "La persona es un adolecente!!!\n"

else
    echo -e "La persona es adulta!!!\n"
fi

echo -e "Ejecutar expresiones condicionales con cadenas\n"

if [ $pais == "EEUU" ]; then
    echo -e "La persona es Norte Americana!!!\n"

elif [ $pais == "Colombia" ] || [ $pais == "Ecuador" ]; then
    echo -e "La persona es del Sur de America!!!\n"

else
    echo -e "Se desconoce su nacionalidad!!!\n"
fi

echo -e "Ejecutra expresiones condicionales para paths\n"

# -d sirve para saber si es un directorio, y si exite o no.
if [ -d $file_path ]; then
    echo -e "El directorio $file_path existe!!!\n"
else 
    echo -e "El directorio $file_path No Existe!!!\n"
fi
