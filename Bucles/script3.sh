#!/bin/bash

read -p "Introduce nombre del archivo para guardar las palabras: " ARCHIVO

if [ -z "$ARCHIVO" ]; then
	echo "Error: Tienes que introducir un archivo"
	exit 1
fi


if [ ! -f "$ARCHIVO" ]; then
	touch "$ARCHIVO"
fi

echo "Introduce palabras. Tienes que escribir ':>'para terminar"

#Comenzamos bucle para leer palabras

while true; do
    read -p "> " PALABRA
    if [ "$PALABRA" = ":>" ]; then
        break  # salir del bucle si el usuario escribe ':>'
    fi
    echo "$PALABRA" >> "$ARCHIVO"
done

echo "Palabras guardadas en $ARCHIVO"
