#!/usr/bin/env bash

# Salir inmediatamente si un comando falla, si hay variables no definidas 
# o si falla un comando en un pipeline.
set -euo pipefail

# Limpiar la pantalla para una presentación pulcra
clear

echo "=========================================="
echo "    CAPTURA DE DATOS DE USUARIO"
echo "=========================================="
echo ""

# 1. Lectura de Nombres
read -rp "Ingrese sus nombres: " nombres
while [[ -z "${nombres// }" ]]; do
    echo "x El nombre no puede estar vacío."
    read -rp "Ingrese sus nombres: " nombres
done

# 2. Lectura de Apellidos
read -rp "Ingrese sus apellidos: " apellidos
while [[ -z "${apellidos// }" ]]; do
    echo "x El apellido no puede estar vacío."
    read -rp "Ingrese sus apellidos: " apellidos
done

# 3. Lectura y Validación de Edad (Solo números enteros)
read -rp "Ingrese su edad: " edad
while ! [[ "$edad" =~ ^[0-9]+$ ]] || [ "$edad" -le 0 ] || [ "$edad" -gt 120 ]; do
    echo "x Por favor, ingrese una edad válida (número entre 1 y 120)."
    read -rp "Ingrese su edad: " edad
done

# 4. Lectura y Validación básica de Correo Electrónico
read -rp "Ingrese su correo electrónico: " correo
regex_email="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
while ! [[ "$correo" =~ $regex_email ]]; do
    echo "x Formato de correo no válido. Ejemplo: usuario@dominio.com"
    read -rp "Ingrese su correo electrónico: " correo
done

# Generar la fecha y hora del reporte
fecha_registro=$(date "+%Y-%m-%d %H:%M:%S")

# Print Reporte en pantalla (usando Heredoc / cat << EOF)
echo ""
cat << EOF
=========================================="
         REPORTE DE USUARIO
=========================================="
 Fecha de registro : $fecha_registro
------------------------------------------
 Nombres           : $nombres
 Apellidos         : $apellidos
 Edad              : $edad años
 Correo Electrónico: $correo
=========================================="
EOF
