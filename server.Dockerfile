# pull official base image
FROM python:3.10.8-alpine

# set work directory
WORKDIR /app
# copy project
# COPY ./requirements.txt /app/requirements.txt
COPY ./server /app/

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
