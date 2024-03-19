#!/bin/bash
# Programa para ejemplificar el empaquetamiento con la funcion pbzip2.
# Autor: LMM - mi_email@dominio.com

echo -e "\nEmpaquetar todos los scripts de la carpeta shell_course en un solo archivo .tar\n"
# -cvf (Create Verbose File), *.sh se empaqueta todo lo que termina en .sh
tar -cvf shell_course.tar *.sh
echo -e "comprimimos shell_course.tar con pbzip2"
pbzip2 -f shell_course.tar

#también se puede hacer directamente con "tar -cf *.sh -c > shell_course.tar.bz2"
