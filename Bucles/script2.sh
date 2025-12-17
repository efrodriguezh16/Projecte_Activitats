#!/bin/bash

# Inicializamos contadores
POSITIVOS=0
NEGATIVOS=0
CEROS=0

# Comprobamos que haya al menos un parámetro
if [ $# -eq 0 ]; then
    echo "Error: no has introducido ningún número."
    exit 1
fi

# Recorremos todos los parámetros
for NUM in "$@"; do
    # Comprobamos si es un número válido
    if ! [ "$NUM" -eq "$NUM" ] 2>/dev/null; then
        echo "Error: '$NUM' no és un número entero válido"
        exit 1
    fi

    # Contamos según el valor
    if [ "$NUM" -gt 0 ]; then
        POSITIVOS=$((POSITIVOS + 1))
    elif [ "$NUM" -lt 0 ]; then
        NEGATIVOS=$((NEGATIVOS + 1))
    else
        CEROS=$((CEROS + 1))
    fi
done

# Mostramos resultados
echo "Números positivos: $POSITIVOS"
echo "Números negativos: $NEGATIVOS"
echo "Números iguales a cero: $CEROS"
