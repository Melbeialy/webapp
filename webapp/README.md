# Simple Web Application

This is a simple web application using [Python Flask](http://flask.pocoo.org/). This is used for the demonstration of Docker build and deployment.
  
Below are the steps required to get this working on a base linux system. Commands in brackets shows how docker file is written to build image layers. 
   
## 1. Install all required dependencies
  
Python and its dependencies

    (RUN) apt-get update 
    (RUN) apt-get install -y python python-pip
   
## 2. Install and Configure Web Server

Install Python Flask dependency

    (RUN) pip install flask

- Copy app.py or download it from source repository
    (ADD) ./app.py /opt/app.py

## 3. Start Web Server

Start web server

    (ENTRYPOINT) FLASK_APP=/opt/app.py flask run --host=0.0.0.0
    
## 4. Test

Open a browser and go to URL

    http://<IP>:5000                            => Hello Platform Engineering!
