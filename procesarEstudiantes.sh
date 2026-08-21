#!/bin/bash

archivodb=$HOME/bin/estudiantes.list

if  [  -f "$archivodb"  ] 
then
while read -r estudiante; do
    echo "Procesando estudiante: $estudiante"
    touch $HOME/public/$estudiante.txt
done < $archivodb
else
    echo "El archivo $archivodb no existe"
fi
