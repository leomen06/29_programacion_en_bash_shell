# ! /bin/bash
# Programa para ejemplificar sentencias lógicas con if y else
# Autor: LMM - mi_email@dominio.com

nota=0
edad=0

echo -e "Ejemplo sentencias if/else\n"
read -n1 -p "Ingrese su nota (1 - 9):" nota
echo -e "\n"

if (( $nota >= 7 )); then
    echo "Aprobastes!!!"
else 
    echo "Reprobastes :("
fi

read -n2 -p "Ingrese su edad (01 - 99):" edad

if [ $edad -le 18 ]; then
    echo -e "\nNo puedes votar!!!"
else
    echo -e "\nPuedes votar!!! :)"
fi
