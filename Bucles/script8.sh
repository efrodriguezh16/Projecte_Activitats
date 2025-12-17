#!/bin/bash

while true; do
    read -p "Introduce una contraseña: " PASS

    if [ ${#PASS} -lt 8 ]; then
        echo "Error: mínimo 8 caracteres"
        continue
    fi

    if ! echo "$PASS" | grep -q '[A-Z]'; then
        echo "Error: debe tener una mayúscula"
        continue
    fi

    if ! echo "$PASS" | grep -q '[0-9]'; then
        echo "Error: debe tener un número"
        continue
    fi

    echo "Contraseña válida"
    break
done
