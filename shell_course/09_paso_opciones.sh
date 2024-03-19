# ! /bin/bash
# Programa para ejemplificar como se realiza el paso a paso de opciones con o sin parámetros.
# Autor: LMM - mi_email@dominio.com

echo -e "\nPrograma Opciones y Parámetros\n"
echo -e "Imprimo el primer parámetro: $1\n"
echo -e "Imprimo el segundo parámetro: $2\n"
echo -e "Imprimo todos los parámetros enviados (las opciones serán tomadas como parámetros también): $*\n"
echo -e "Recuperar Opciones\n"
while [ -n "$1" ]
do
case $1 in
-a) echo -e "opción -a utilizada\n";;
-b) echo -e "opción -b utilizada\n";;
-c) echo -e "opción -c utilizada\n";;
*) echo -e "$1 no es una opción válida";;
esac
shift
done
