# Docker webapp

## Overview 

This repository is used to create the `elbeialy/webapp` docker image which runs a simple web application.

The result of running this web application is displaying "Hello Platform Engineering!" on a web browser.

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
    sudo docker build -tag senzing/web-app-demo .
    ```
