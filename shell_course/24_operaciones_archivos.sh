#!/bin/bash
# Programa para ejemplificar operaciones en archivos.
# Autor: LMM - mi_email@dominio.com

echo -e "\nOperaciones en un archivo:\n"
mkdir -m 764 backUpScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backUpScripts\n"
#*.* copia todos los archivos
cp *.* backUpScripts/
ls -la backUpScripts/

echo -e "\nmover el directorio backUpScripts a otro directorio: $HOME\n"
mv backUpScripts $HOME

echo -e"\nElimnar los archivos .txt\n"
rm *.txt
