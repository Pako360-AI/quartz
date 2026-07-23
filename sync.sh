#!/bin/bash

echo "=== Sincronizando Quartz con GitHub Pages ==="

# 1. Comprobar estado de Git y añadir cambios
echo "--> Añadiendo archivos..."
git add .

# 2. Solicitar mensaje de commit (opcional) o usar uno por defecto
MSG="${1:-Update Quartz vault content}"

echo "--> Guardando cambios (commit: '$MSG')..."
git commit -m "$MSG"

# 3. Ejecutar sincronización nativa de Quartz
echo "--> Ejecutando npx quartz sync..."
npx quartz sync

echo "=== Proceso finalizado ==="
