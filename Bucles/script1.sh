#!/bin/bash

#Pedimos el fichero

read -p "Nombre del fichero: " FICHERO

#Comprobamos si existe el fichero

if [ ! -f "$FICHERO" ]; then
	echo  "Error: el archivo no existe"
	exit 1
fi
#Creamos el fichero temporal vacio

TEMP="fichero_sin_comentarios.tmp" 
> "$TEMP"
BORRA=$(cat "$FICHERO" | wc -l)
echo "$BORRA" 
#Ahora buscamos las lineas que comienzan por # primero substituimos los saltos de linea por /r para que recorra el for correctamente
for BORRAR in $(seq 1 "$BORRA"); do
	LINEA=$(sed -n "${BORRAR}p" "$FICHERO")
	#Sacamos las lineas que comiencen por # y las borramos
	NOVA="${LINEA%%#*}"
	echo "$NOVA" >> "$TEMP"
done


read -p "Introduce una palabra: " PALABRA
if  grep -qi "$PALABRA" "$FICHERO"; then
	echo "La palabra existe"
else
	echo "La palabra no existe"
fi

read -p "Introduce una frase para añadir: " FRASE
echo "$FRASE" >> "$FICHERO"
echo "Frase añadida"
