FROM python:3.7.1-alpine
RUN apk update \
  && apk add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq
RUN mkdir /usr/src/app
RUN pip install --upgrade pip
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY . .