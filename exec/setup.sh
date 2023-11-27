#!/bin/bash

VENV_NAME=".env-web-scrap"

cp requirements.txt ../jupyter-notebooks
cd ..
cd jupyter-notebooks

python3 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"

pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt
python -m ipykernel install --user --name="$VENV_NAME"

pip install ipykernel==6.26.0
pip install selenium==4.12.0
pip install webdriver-manager==4.0.0
pip install chromedriver-binary==116.0.5845.96.0

rm -r requirements.txt

docker run -d --name "sel-docker" -p 4444:4444 --shm-size=2g \
  -e SE_NODE_MAX_SESSIONS=6 \
  -e SE_NODE_SESSION_TIMEOUT=300 \
  -e SE_VNC_NO_PASSWORD=1 \
  selenium/standalone-chrome

code .

if command -v xdg-open &> /dev/null; then
    xdg-open http://localhost:4444
elif command -v open &> /dev/null; then
    open http://localhost:4444
else
    echo "No se pudo abrir el navegador automáticamente. Abre tu navegador y visita http://localhost:8888"
fi