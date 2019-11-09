FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y python python-pip

RUN pip install flask

ADD ./webapp/app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
