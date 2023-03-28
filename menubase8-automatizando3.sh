#!/bin/bash

# Guardar el nombre del directorio actual
current_dir=$(pwd)

# Cambiar al directorio raíz
cd /

# Contador para llevar la cuenta de las subcarpetas
counter=0

# Array para almacenar las subcarpetas
dirs=(*/)

# Número de subcarpetas en el directorio actual
num_dirs=${#dirs[@]}

# Bucle hasta que se hayan mostrado todas las subcarpetas
while [ $counter -lt $num_dirs ]; do
  # Mostrar el nombre de la subcarpeta
  echo "Contenido de la subcarpeta ${dirs[$counter]}"
  ls "${dirs[$counter]}"

  # Incrementar el contador
  counter=$((counter + 1))

  # Esperar 3 segundos
  sleep 3
done

# Cambiar de nuevo al directorio original
cd || $current_dir
