FROM python:3.8-buster

ARG APP_USER=appuser
RUN groupadd -r ${APP_USER} && useradd --no-log-init -r -g ${APP_USER} ${APP_USER}

ENV PYTHON_VERSION 3.8.7
ENV PYTHON_PIP_VERSION 21.0.1

COPY . /mysite
COPY requirements.txt /code/

WORKDIR /mysite

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt \
     && rm -rf ~/.cache/pip

USER ${APP_USER}:${APP_USER}