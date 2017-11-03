FROM python:3
MAINTAINER bmansfield <byron@byronmansfield.com>

#Set environment vars
ENV PYTHONUNBUFFERED 1

#Work dir
RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/

#Install deps
RUN pip install -r requirements.txt

#Add the app code
ADD . /app/
