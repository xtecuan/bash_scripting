#!/bin/bash

echo "Hola Mundo!"
echo "La fecha es $(date)"

datos='estudiante1 estudiante2 estudiante3 estudiante4'
nombre_completo="Katherine Torres"

for estudiante in $datos
do
 echo "Bienvenido a bash $estudiante"
done

echo "Bienvenida estudiante $nombre_completo"
