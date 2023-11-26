#!/bin/bash

# Nombre del entorno virtual
VENV_NAME="web-scraping-env"

# Crear y activar el entorno virtual
python -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"

# Instalar Selenium 4.9.0
pip install selenium==4.9.0

echo "Entorno virtual configurado. Para activar, ejecuta: source $VENV_NAME/bin/activate"