#!/bin/bash

VENV_NAME=".env-web-scrap"

cp requirements.txt ../jupyter-notebooks
cd ..
cd jupyter-notebooks

python3.9 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"

pip install --upgrade pip
pip install -r requirements.txt
python -m ipykernel install --user --name="$VENV_NAME"
rm -r requirements.txt

docker run -d --name "sel-docker" -p 4444:4444 --shm-size=2g \
  -e SE_NODE_MAX_SESSIONS=4 \
  -e SE_NODE_SESSION_TIMEOUT=30 \
  -e SE_VNC_NO_PASSWORD=1 \
  selenium/standalone-chrome

code .
