FROM python:3.8.2-slim-buster

RUN apt-get update \
    && apt-get --yes --no-install-recommends install \
        python3 python3-dev \
        python3-pip python3-venv python3-wheel python3-setuptools \
         && rm -rf /var/lib/apt/lists/*



ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PYTHON_VERSION 3.8.7
ENV PYTHON_PIP_VERSION 21.0.1


COPY . /mysite
COPY requirements.txt /code/


WORKDIR /mysite

ADD requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt \
     && rm -rf ~/.cache/pip

