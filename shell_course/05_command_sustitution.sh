# ! /bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenarlos en una variable para su posterior utilización.
# Autor: LMM - mi_email@dominio.com

# Primer formato para asignar un comando a una variable, utilizo las backsticks ``
ubicacion_actual=`pwd`

# Segundo formato para asignar un comando a una variable. utilizando $(el_comando)
#uname -a trae la información a nivel de kernel.
info_kernel=$(uname -a)

echo -e "\nmi ubicación actual es: $ubicacion_actual"
echo -e "\ninfo del kernel: $info_kernel\n"
