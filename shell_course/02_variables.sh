# !/bin/bash
# Programa para revisar la declaracion de variables

nombre=Leonardo
apellido=Mendez
edad=42

echo "Este es mi nombre NO EXPORTADO: $nombre, $apellido, y mi edad NO EXPORTADO: $edad"

# Exportamos la/las variables a ser utilizadas
export nombre
export apellido
export edad

#Llamar al siguiente script para recuperar las variables
./02_variables_export.sh
