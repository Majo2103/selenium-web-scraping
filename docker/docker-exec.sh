#!/bin/bash

# Docker image build
docker-compose build

# Docker image run 
docker-compose up  # El flag -d permite ejecutar los contenedores en segundo plano

# Espera unos segundos para asegurar que los contenedores estén en funcionamiento
sleep 3

# Abre el navegador en la dirección localhost:8888
# Ajusta este comando según tu sistema operativo
if command -v xdg-open &> /dev/null; then
    xdg-open http://localhost:8888
elif command -v open &> /dev/null; then
    open http://localhost:8888
else
    echo "No se pudo abrir el navegador automáticamente. Abre tu navegador y visita http://localhost:8888"
fi