#!/bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip.
# Autor: LMM - mi_email@dominio.com

echo -e "\nEmpaquetar todos los scripts de la carpeta shell_course con zip y asignar una clave de seguridad\n"
zip -e shell_course.zip *.sh
