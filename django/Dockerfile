FROM python:3.4
MAINTAINER Arnav Dugar

ENV PYTHONUNBUFFERED 1
COPY ./website /django
WORKDIR /django
RUN pip3 install -r requirements.txt
