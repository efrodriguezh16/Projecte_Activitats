#!/bin/bash

FITXER="$1"

if [[ -d "$FITXER" ]]; then
echo "L'argument es un directori"
fi

if [[  -f "$FITXER" ]]; then
echo "Es un fitxer ${FITXER##*.}"
fi
