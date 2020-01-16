# FROM python:3.7-alpine
FROM python:3.7
MAINTAINER Rampoo Dev

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# RUN apt-get update
# RUN apt-get install -y libmariadb-dev

# RUN adduser -D user
# User user