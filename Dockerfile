FROM python:3.8.2-slim-buster

RUN apt-get update && apt-get install --no-install-recommends -y python \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /mysite
COPY requirements.txt /code/


WORKDIR /mysite

RUN pip3 --no-cache-dir install -r requirements.txt

