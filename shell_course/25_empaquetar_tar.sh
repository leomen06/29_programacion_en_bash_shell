#!/bin/bash
# Programa para ejemplificar el empaquetamiento con la funcion tar.
# Autor: LMM - mi_email@dominio.com

echo -e "\nEmpaquetar todos los scripts de la carpeta shell_course\n"

# -cvf (Create Verbose File), *.sh se empaqueta todo lo que termina en .sh
tar -cvf shell_course.tar *.sh
