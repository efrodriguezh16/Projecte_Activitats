#!/bin/bash

CONTADOR=0
SUMA=0
PRODUCTO=1

until [ "$CONTADOR" -eq 3 ]; do
    read -p "Introduce un numero entero: " NUM

    # Comprobamos si es un numero entero
    if ! [ "$NUM" -eq "$NUM" ]; then
        echo "Error: no es un numero entero"
    else
        if [ "$CONTADOR" -eq 0 ]; then
            MAX=$NUM
            MIN=$NUM
        fi

        SUMA=$((SUMA + NUM))
        PRODUCTO=$((PRODUCTO * NUM))

        if [ "$NUM" -gt "$MAX" ]; then
            MAX=$NUM
        fi

        if [ "$NUM" -lt "$MIN" ]; then
            MIN=$NUM
        fi

        CONTADOR=$((CONTADOR + 1))
    fi
done

echo "Suma: $SUMA"
echo "Producto: $PRODUCTO"
echo "Núm. más grande: $MAX"
echo "Núm más pequeño: $MIN"
