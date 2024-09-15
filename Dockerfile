FROM --platform=linux/amd64 python:3.12 AS build

RUN apt-get update 

WORKDIR /usr/src/app

COPY ./analytics /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade flask

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=postgresql-service
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

EXPOSE 5153

CMD ["python", "app.py"]
