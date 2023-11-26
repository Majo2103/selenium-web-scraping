#!/bin/bash

# Nombre del entorno virtual
VENV_NAME="web-scraping-env"

# Crear y activar el entorno virtual
python3 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"

# Instalar requirements.txt en el entorno virtual
pip install -r requirements.txt

echo "Entorno virtual configurado. Para activar, ejecuta: source $VENV_NAME/bin/activate"