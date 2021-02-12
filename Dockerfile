FROM django

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /mysite
COPY requirements.txt /code/


WORKDIR /mysite

RUN pip3 --no-cache-dir install -r requirements.txt

