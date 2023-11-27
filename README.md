# Selenium Web Scraping

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/9/9f/Selenium_logo.svg" alt="Selenium Logo" width="500" height="259">
</div>

## [Canva presentation](https://www.canva.com/design/DAF06xLeqlE/PidPzTXs1nAHa52RaZ9OJQ/view)

This repository contains an executble script to create a [Docker](https://www.docker.com/get-started/) container of`selenium/standalone-chrome` image, providing a Selenium server with the Chrome browser. Additionally, it includes configurations for creating a virtual environment to perform web scraping tasks and format the extracted data for convenient handling with pandas.


Follow these steps to set up and work with this repository:

### 1. Fork

Click on the "Fork" button at the top right corner of the repository to create a copy in your GitHub account.

### 2. Clone

Clone the forked repository to your local machine.

### 3. Run setup (for linux/mac os)
Using the terminal, move to the exec directory an run 
<code>./setup.sh</code>

#### 3.1 If having problems with the executable
Manually create a python environment:
<br>
<code>cp requirements.txt ../jupyter-notebooks
cd ..
cd jupyter-notebooks
python3 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"
pip install -r requirements.txt
python -m ipykernel install --user --name="$VENV_NAME"
rm -r requirements.txt</code>

Manually start the docker container:
<br>
<code>docker run -d --name "sel-docker" -p 4444:4444 --shm-size=2g selenium/standalone-chrome</code>


### 4. Make sure docker container is up and python environment is active
Hint: <code>docker ps</code>

### 5. Work with the notebooks

## Task
Follow the instructions on the corresponding[jupyter-notebooks](./jupyter-notebooks/)