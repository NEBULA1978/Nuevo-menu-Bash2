#!/bin/bash

# EJEMPLO1

# Guardar el nombre del directorio actual
# current_dir=$(pwd)

# # Cambiar al directorio $HOME
# cd $HOME

# while true; do
#   # Mostrar las subcarpetas en el directorio actual
#   echo "Archivos en el directorio actual:"
#   for file in *; do
#     echo "$file"
#   done

#   # Esperar 3 segundos
#   sleep 3
# done

# # Cambiar de nuevo al directorio original
# cd $current_dir

# EJEMPLO2

#!/bin/bash

# Guardar el nombre del directorio actual
# current_dir=$(pwd)

# # Cambiar al directorio $HOME
# cd $HOME

# # Contador para llevar la cuenta de las subcarpetas
# counter=0

# # Array para almacenar las subcarpetas
# dirs=(*/)

# # Número de subcarpetas en el directorio actual
# num_dirs=${#dirs[@]}

# # Bucle hasta que se hayan mostrado todas las subcarpetas
# while [ $counter -lt $num_dirs ]; do
#   # Mostrar el contenido de la subcarpeta
#   ls "${dirs[$counter]}"

#   # Incrementar el contador
#   counter=$((counter + 1))

#   # Esperar 3 segundos
#   sleep 3
# done

# # Cambiar de nuevo al directorio original
# cd $current_dir

#!/bin/bash

# Guardar el nombre del directorio actual
# current_dir=$(pwd)

# # Cambiar al directorio $HOME
# cd $HOME

# # Contador para llevar la cuenta de las subcarpetas
# counter=0

# # Array para almacenar las subcarpetas
# dirs=(*/)

# # Número de subcarpetas en el directorio actual
# num_dirs=${#dirs[@]}

# # Bucle hasta que se hayan mostrado todas las subcarpetas
# while [ $counter -lt $num_dirs ]; do
#   # Mostrar el nombre de la subcarpeta
#   echo "${dirs[$counter]}"

#   # Incrementar el contador
#   counter=$((counter + 1))

#   # Esperar 3 segundos
#   sleep 3
# done

# # Cambiar de nuevo al directorio original
# cd $current_dir

#!/bin/bash

# Guardar el nombre del directorio actual
current_dir=$(pwd)

# Cambiar al directorio $HOME
cd || $HOME

# Contador para llevar la cuenta de las subcarpetas
counter=0

# Array para almacenar las subcarpetas
dirs=(*/)

# Número de subcarpetas en el directorio actual
num_dirs=${#dirs[@]}

# Bucle hasta que se hayan mostrado todas las subcarpetas
while [ "$counter" -lt "$num_dirs" ]; do
  # Mostrar el nombre de la subcarpeta
  echo "${dirs[$counter]}"
  ls "${dirs[$counter]}"
  # Incrementar el contador
  counter=$((counter + 1))

  # Esperar 3 segundos
  sleep 3
done

# Cambiar de nuevo al directorio original
cd || $current_dir

# descripcion

# El script en Bash es un programa que tiene como objetivo listar todas las subcarpetas y sus contenidos dentro del directorio $HOME, utilizando un bucle while.

# Primero, el script almacena el nombre del directorio actual en una variable llamada current_dir, y luego cambia al directorio $HOME. A continuación, el script inicializa un contador de subcarpetas a 0, crea un array llamado dirs que almacena todas las subcarpetas en el directorio actual, y calcula el número de subcarpetas en el directorio actual.

# El script luego utiliza un bucle while para iterar a través del array dirs y listar los archivos y subdirectorios dentro de cada subcarpeta, mostrando el nombre de la subcarpeta en cada iteración.

# Después de listar los contenidos de cada subcarpeta, el script espera 3 segundos antes de continuar con la siguiente subcarpeta. Una vez que se han mostrado todos los contenidos de las subcarpetas, el script cambia de nuevo al directorio original guardado en la variable current_dir.

# En resumen, este script es útil para examinar los contenidos de todas las subcarpetas dentro de un directorio de manera organizada y secuencial.
