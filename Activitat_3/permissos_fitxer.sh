#!/bin/bash

FITXER="$1"

if [[ ! -e "$FITXER" ]]; then
echo "El fitxer no existeix"
fi

[[ -r "$FITXER " ]] && echo "Permiso Lectura: Si" || echo "Permiso Lectura: No"
[[ -w "$FITXER " ]] && echo "Permiso Escritura: Si" || echo "Permiso Escritura: No"
[[ -x "$FITXER " ]] && echo "Permiso Ejecución: Si" || echo "Permiso Ejecución: No"
