#!/bin/bash
# Programa para ejemplificar el empaquetamiento con la funcion gzipi.
# Autor: LMM - mi_email@dominio.com

echo -e "\nEmpaquetar todos los scripts de la carpeta shell_course en un solo archivo .tar\n"

# -cvf (Create Verbose File), *.sh se empaqueta todo lo que termina en .sh
tar -cvf shell_course.tar *.sh

#cuando se empaqueta con gzip el archivo original se elimina
#como gzip solo permite empaquetar un solo archivo, primero empaquetamos un conjuto de archivos con .tar y luego usamos .gzip para optimizar.
echo "comprimiendo el archivo .tar con gzip"
#-9 copresión más lenta pero más eficiente.
gzip -9 shell_course.tar
