FROM python:3.8-buster

ENV PYTHON_VERSION 3.8.7
ENV PYTHON_PIP_VERSION 21.0.1

COPY . /mysite
COPY requirements.txt /code/

WORKDIR /usr/src/app

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt \
     && rm -rf ~/.cache/pip

