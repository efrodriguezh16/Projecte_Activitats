#!/bin/bash

WEB_DIR="/var/www/html"
ARCHIVO_LOGS="/var/log/monitorizacion.log"
PUERTO=8080

echo "[$(date)] Iniciando servidor web ... " >> "$ARCHIVOS_LOG"

#Iniciar servidor HTTP por el puerto 8080 y utilizamos la ruta donde esta el index tambien (ambas como variables)

busybox httpd -f -p $PUERTO -h "$WEB_DIR" &
SERVIDOR_PID=$!

echo "[$(date)] Servidor iniciado en el puerto $PUERTO con PID $SERVIDOR_PID" >> "$ARCHIVO_LOGS"
echo "[$(date)] Monitoreando los cambios en $WEB_DIR ... " >> "$ARCHIVO_LOGS"

#Monitorizamos los cambios en los archivos

inotifywait -m -r -e modify,create,delete "$WEB_DIR" --format '%e %w%f' |
while read event file; do
	Usuario=$(stat -c '%U' "$file" 2>/dev/null || echo "Desconocido")
	echo "[$(date)] Evento: $event | Archivo: $file | Usuario: $Usuario" >> "$ARCHIVO_LOGS"
done &

wait $SERVIDOR_PID
