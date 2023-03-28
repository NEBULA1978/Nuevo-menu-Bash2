#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls"
    
    "Mostrar calendario:|cal"

    "Mostrar fecha de hoy:|date"

    "Crear archivos a.txt b.txt c.html a.c e.py:|touch a.txt b.txt c.html a.c e.py"

    "Borrar todos los archivos txt de este directorio:|rm *.txt"

    "Borrar todos los archivos html de este directorio:|rm *.html"

    "Borrar todos los archivos .c de este directorio:|rm *.c"

    "Borrar todos los archivos .py de este directorio:|rm *.py"

    "Borrar todos los archivos .png de este directorio:|rm *.png"

    "Borrar todos los archivos .blend de este directorio:|rm *.blend"

    "Borrar todos los archivos .css de este directorio:|rm *.css"

    "Borrar todos los archivos .js de este directorio:|rm *.js"

    "Borrar todos los archivos .mp3 de este directorio:|rm *.mp3"

    "Ir a la carpeta anterior:|cd .."

    "Borrar todos los archivos txt de este directorio a traves de su ruta relativa o absoluta:|cd .. && rm expresiones-regulares-sarosi/*.txt"

    "Crear ficheros aa.txt ab.txt ba.txt:|touch aa.txt ab.txt ba.txt"

    "Borrar todos los ficheros .txt que empiezan por a:|rm a*.txt"

    "Borrar todos los ficheros .txt que empiezan por b:|rm b*.txt"

    "Crear ficheros a1.txt a22.txt ab.txt:|touch a1.txt a22.txt ab.txt"

    "Borrar todos los ficheros  que empiezan por a y despues tenga un solo caracter y terminen con extension .txt:|rm a?.txt"

    "Creamos ficheros fichero-1.txt fichero-2.txt fichero3.txt prueba.txt otraprueba.txt fichero-12.txt:|touch fichero-1.txt fichero-2.txt fichero3.txt prueba.txt otraprueba.txt fichero-12.txt"

    "Borrar  los archivos que empiecen por fichero seguido de un guion con 1 caracter y termine con .txt:|rm *-?.txt"

    "Creamos ficheros ficheroA.txt fichero-B.txt ficheroC.txt fichero.txt ficheroD.txt:|touch ficheros ficheroA.txt ficheroB.txt ficheroC.txt fichero.txt ficheroD.txt"

    "Queremos borrar la palabra que contenga fichero y despues una A o B y termine con .txt:|rm fichero[AB].txt"

    "Queremos borrar la palabra que contenga fichero y despues no termine ni con A o B y termine con .txt:|rm fichero[^AB].txt"

    "Crear ficheros fAB.txt fAC.txt fAD.txt fichero f fAE.txt:|touch fAB.txt fAC.txt fAD.txt fichero f fAE.txt"

    "Borrar los ficheros fAB.txt o fAC.txt:|rm f{AB,AC}.txt"

    "Salir:|exit 0"
)

while true; do
    clear
    echo "Ingrese el número de la opción deseada:"
    for i in "${!opciones[@]}"; do
        echo "$i. ${opciones[$i]%%|*}" # Imprimimos el índice de la opción y su nombre (sin el comando correspondiente).
    done
    read opcion

    # Validamos que la opción ingresada sea un número válido dentro del rango de opciones.
    if [[ $opcion =~ ^[0-9]+$ ]] && [ $opcion -ge 0 ] && [ $opcion -lt ${#opciones[@]} ]; then
        clear
        comando="${opciones[$opcion]#*|}" # Obtenemos el comando correspondiente a la opción seleccionada.
        eval "$comando"                   # Ejecutamos el comando.
        echo ""
        echo "Presione Enter para continuar..."
        read
    else
        echo "Opción inválida. Presione Enter para continuar..."
        read
    fi

done

# El script es un menú interactivo en bash que permite realizar operaciones en una instancia de MongoDB que se ejecuta en un contenedor de Docker. El menú presenta varias opciones que incluyen comandos para mostrar información del sistema de archivos, conectarse a la instancia de MongoDB, crear una base de datos, agregar valores a la base de datos, buscar registros, ordenar registros, etc.

# El script utiliza un array para almacenar las opciones del menú, donde cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente. Luego, utiliza un ciclo while para mostrar el menú en pantalla y ejecutar el comando correspondiente a la opción seleccionada por el usuario.

# El script utiliza la función eval para ejecutar los comandos, lo que significa que el usuario debe tener cuidado al seleccionar opciones y no ingresar comandos maliciosos. Además, el script asume que el contenedor de MongoDB ya está instalado y disponible en el sistema.

# Sí, se pueden implementar medidas de seguridad para evitar la inyección de comandos maliciosos. Algunas sugerencias son:

#     Utilizar una lista blanca de comandos permitidos: en lugar de permitir cualquier comando que se ingrese desde el menú, se puede crear una lista blanca de comandos permitidos y validar que el comando seleccionado por el usuario esté en la lista. De esta manera, solo se permitirían comandos específicos que se consideren seguros.

#     Sanitizar la entrada del usuario: se pueden utilizar herramientas como sed o awk para eliminar los caracteres especiales que puedan ser utilizados para inyectar comandos maliciosos. Por ejemplo, se pueden eliminar caracteres de escape, comillas y caracteres especiales como punto y coma (;) que se utilizan para separar comandos.

#     Limitar los permisos de ejecución: se pueden limitar los permisos de ejecución de los comandos que se ejecutan desde el menú, para evitar que se realicen operaciones maliciosas. Por ejemplo, se pueden limitar los permisos de escritura o lectura en archivos importantes del sistema.

#     Utilizar variables en lugar de eval: en lugar de usar eval para ejecutar los comandos, se pueden utilizar variables para almacenar los comandos y luego ejecutarlos. De esta manera, se limitaría la posibilidad de inyección de comandos maliciosos.

#     Validar la entrada del usuario: se pueden validar los datos ingresados por el usuario para asegurarse de que solo se ingresen datos válidos y seguros. Por ejemplo, se pueden utilizar expresiones regulares para validar el formato de los datos, o limitar la cantidad de caracteres que se pueden ingresar.

# Es importante tener en cuenta que ninguna medida de seguridad es completamente efectiva, por lo que es recomendable utilizar varias medidas de seguridad para reducir el riesgo de inyección de comandos maliciosos.
