# Docker webapp

## Overview 

This repository is used to create the `elbeialy/webapp` docker image which runs a simple web application. The result of running this web application is displaying "Hello Platform Engineering!" on a web browser.

Details on how the Docker file is created could be found in https://github.com/Melbeialy/webapp/tree/master/webapp

## System Requirements
- Docker Installed.
- 432 MB free space for downlowding/pulling the docker image.
- 10 minutes to get the demonstration up-and-running, depending on CPU and network speeds.

## Build Docker Image
- Option #1: Using `docker` command and GitHub.

    ```console
    docker build -tag elbeialy/webapp https://github.com/Melbeialy/webapp.git
    ```
    
- Option #2: Using `docker` command and local repository.

    ```console
    cd ${GIT_REPOSITORY_DIR}
    sudo docker build -tag elbeialy/webapp .
    ```
## Docker Image Layers
- OS Layer: Ubunto is selected as a fairly simplified Linux distribution that provides extensive support for its OS.
- Repos Update Layer: includes latest updates for Ubunto repos.
- Python Layer: includes installing Python and its dependencies.
- Webserver Layer: includes installing and configuring webserver (Flask).
- Source Code layer: Adding source (app.py) code to docker image. 
- Entrypoint Layer: Adding Flask command to run the webapp

## Run Docker Container
- Using `docker` command.
    ```console
    docker run -d -p 5000:5000 elbeialy/webapp
    ```
   
