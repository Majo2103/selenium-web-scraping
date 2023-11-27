#!/bin/bash

# Nombre del entorno virtual
VENV_NAME=".env-web-scrap"

cp requirements.txt ../jupyter-notebooks
cd ..
cd jupyter-notebooks
# Crear y activar el entorno virtual
python3 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"
# Instalar requirements.txt en el entorno virtual
pip install -r requirements.txt
python -m ipykernel install --user --name="$VENV_NAME"
rm -r requirements.txt
echo "Entorno virtual configurado."

docker run -d --name "sel-docker" -p 4444:4444 --shm-size=2g selenium/standalone-chrome
echo "Contenedor con ChromeDriver encendido."
code .
