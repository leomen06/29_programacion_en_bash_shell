# ! /bin/bash
#Programa para ejemplificar el paso de argumentos

#Creamos la primer variable = a $1 y $2, con lo cual el primer y segundo argumento que ingresemos se guardarán en sus correspondientes variables.

nombre_curso=$1
horario_curso=$2

echo "El nombre del curso es: $nombre_curso, dictado en el horario: $horario_curso"
echo -e "\nEl número de parámetros enviados es: $#"
echo -e "\nLos parámetros enviados son: $*"
echo -e "\nparámetro 0: $0"
