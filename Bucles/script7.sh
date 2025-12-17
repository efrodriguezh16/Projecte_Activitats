#!/bin/bash
#Iniciamos un bucle hasta que el usuario lo quiera romper
while true; do
    echo "Elige una opción:"
    echo "1) piedra"
    echo "2) papel"
    echo "3) tijeras"
    echo "4) salir"

    read -p "> " OPCION

    if [ "$OPCION" -eq 4 ]; then
        echo "Adiós"
        break
    fi
#La máquina elige un num. aleatorio, lo divide entre 3 para que el resto sea 1 o 2 y le añadimos que sume 1 para que el juego sea con 1, 2 y 3
    MAQUINA=$((RANDOM % 3 + 1))

    echo "La máquina ha elegido: $MAQUINA"

    if [ "$OPCION" -eq "$MAQUINA" ]; then
        echo "Empate"
    elif [ "$OPCION" -eq 1 ] && [ "$MAQUINA" -eq 3 ]; then
        echo "Ganas"
    elif [ "$OPCION" -eq 2 ] && [ "$MAQUINA" -eq 1 ]; then
        echo "Ganas"
    elif [ "$OPCION" -eq 3 ] && [ "$MAQUINA" -eq 2 ]; then
        echo "Ganas"
    else
        echo "Pierdes"
    fi
done
