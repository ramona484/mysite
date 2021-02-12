FROM python:3.8.2-slim-buster
RUN apt-get update


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /mysite
COPY requirements.txt /code/


WORKDIR /mysite

RUN pip3 --no-cache-dir install -r requirements.txt

