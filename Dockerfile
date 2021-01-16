FROM python:3.7-alpine
LABEL architecture="Yuki"

ENV PYTHONUNBUFFERD 1
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt


RUN mkdir /django-api
WORKDIR /django-api 
COPY ./django-api /django-api

RUN adduser -D yuki
USER yuki
