# Selenium Web Scraping

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/9/9f/Selenium_logo.svg" alt="Selenium Logo" width="500" height="259">
</div>


This repository contains an executble script `selenium/standalone-chrome` Docker image, providing a Selenium server with the Chrome browser. Additionally, it includes configurations for creating a virtual environment to perform web scraping tasks and format the extracted data for convenient handling in a DataFrame.


Follow these steps to set up and work with this repository:

## 1. Fork

Click on the "Fork" button at the top right corner of the repository to create a copy in your GitHub account.

## 2. Clone

Clone the forked repository to your local machine.

## 3. Run setup (for linux/mac os)
Using the terminal, move to the exec directory an run 
<code>./setup.sh</code>

### 3.1 If having problems with the executable
Manually create a python environment:
<code>python3 -m venv "$VENV_NAME"
source "$VENV_NAME/bin/activate"
pip install -r requirements.txt
python -m ipykernel install --user --name="$VENV_NAME"
rm -r requirements.txt</code>

Manually start the docker container:
<code>docker run -d --name "sel-docker" -p 4444:4444 --shm-size=2g selenium/standalone-chrome</code>


## 4. Make docker container is up and python environment is active

## 5. Work with the notebooks

## Task
Follow the instructions on the corresponding jupyter notebook.