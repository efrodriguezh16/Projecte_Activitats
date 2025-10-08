#!/bin/bash

echo "Usuari actual: $USER"
echo "Whoami: $(whoami)"
echo "Directori actual: $PWD"
echo "Directori personal: $HOME"
echo "Contingut del directori actual:"
ls
echo "Nombre d'elements en aquest directori: $(ls | wc -l)"
echo "PID del shell: $$"
echo "Codi retorn de l'ultima ordre: $?"
