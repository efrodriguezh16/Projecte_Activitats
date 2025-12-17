#!/bin/bash

# Mostrar usuarios con alguna letra mayúscula
echo "Usuaris con mayúsculas:"
grep '[A-Z]' /etc/passwd | cut -d: -f1

# Pedir un usuario válido
while true; do
    read -p "Introduce un nombre de usuario: " USUARIO

    if grep -q "^$USUARIO:" /etc/passwd; then
        break # en caso de que encuentre un usuario con el break se rompe el while
    else
        echo "El usuario no existe. Vuelve a probar."
    fi
done

# Mostrar información del usuario
grep "^$USUARIO:" /etc/passwd
