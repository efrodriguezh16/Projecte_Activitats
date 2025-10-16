#!/bin/bash

DIRECTORI="$1"

if [[ ! -d "$DIRECTORI" ]]; then
echo "El directori no existeix"
fi

NOMARXIU="$2"

if [[ -f "$NOMARXIU" ]]; then
	read -p "El fitxer ja existeix... vols sobreescriure'l (s/n): " RESPOSTA
	if [[ "$RESPOSTA" != "s" ]]; then
	echo "Operació cancel·lada."
	exit
	fi
fi

tar -czf "$NOMARXIU" "$DIRECTORI"
echo "Directori comprimit correctament a $NOMARXIU"
