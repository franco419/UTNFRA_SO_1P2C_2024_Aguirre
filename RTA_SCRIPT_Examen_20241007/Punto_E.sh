#!/bin/bash

# Filtrando la info de la memoria RAM y creando un .txt
echo "Filtrando la info de la memoria RAM"
grep MemTotal /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_Aguirre/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

# Filtrando la info de chasis y guardándola en un .txt
echo "Filtrando la info de chasis"
sudo dmidecode -t chassis | grep Manufacturer >> ~/repogit/UTNFRA_SO_1P2C_2024_Aguirre/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
cat ~/repogit/UTNFRA_SO_1P2C_2024_Aguirre/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

