#!/bin/bash

# Pedimos un directorio hasta que sea valido (el until lo que hace es repetir el bucle hasta que se cumpla la condición
until [ -d "$DIR" ]; do
    read -p "Introduce la ruta del directorio: " DIR
    if [ ! -d "$DIR" ]; then
        echo "Error: el directorio no es valido"
    fi
done

# Aqui verificamos los permisos del directorio
echo "Permisos del directorio:"
[ -r "$DIR" ] && echo "Lectura: sí" || echo "Lectura: no"
[ -w "$DIR" ] && echo "Escritura: sí" || echo "Escritura: no"
[ -x "$DIR" ] && echo "Ejecución: sí" || echo "Ejecución: no"

# Contamos el número de archivos y de carpetas
ARCHIVOS=$(ls -p "$DIR" | grep -v / | wc -l)
CARPETAS=$(ls -p "$DIR" | grep / | wc -l)

echo "Número de archivos: $ARCHIVOS"
echo "Número de carpetas: $CARPETAS"

# Mostramos los nombres
echo "Archivos:"
ls -p "$DIR" | grep -v /

echo "Carpetas:"
ls -p "$DIR" | grep /
