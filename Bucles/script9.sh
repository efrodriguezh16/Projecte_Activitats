#!/bin/bash

while true; do
    echo "Elige una opción"
    echo "1) Mostrar fecha y hora"
    echo "2) Comprobar si existe un fichero"
    echo "3) Salir"

    read -p "> " OPCION

    if [ "$OPCION" -eq 1 ]; then
        date
    elif [ "$OPCION" -eq 2 ]; then
        read -p "Nombre del fichero: " FICHERO
        if [ -f "$FICHERO" ]; then
            echo "El fichero existe"
        else
            echo "El fichero NO existe"
        fi
    elif [ "$OPCION" -eq 3 ]; then
        echo "Adiós"
        break
    else
        echo "Opción no válida"
    fi
done
