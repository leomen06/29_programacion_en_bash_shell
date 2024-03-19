#!/bin/bash
# Programa para ejemplificar el uso de la iteración for.
# Autor: LMM - mi_email@dominio.com

numero=1

while [ $numero -ne 10 ]
do
	echo "imprimiendo $numero veces"
	numero=$(( numero + 1 ))
done
