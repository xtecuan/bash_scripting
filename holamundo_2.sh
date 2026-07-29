#!/bin/bash

clear
echo "Programa que lee la informacion de un usuario\n\n" 

echo -n "Ingrese los nombres del usuario	" 
read -r nombres

echo -n "Ingrese los apellidos del usuario	"
read -r apellidos

echo -n "Ingrese la edad del usuario	"
read -r edad

echo -n "Ingrese el correo electronico del usuario	"
read -r correo


echo "Nombres:    $nombres"
echo "Apellidos:  $apellidos"
echo "Edad:       $edad annios"
echo "Correo:     $correo"
