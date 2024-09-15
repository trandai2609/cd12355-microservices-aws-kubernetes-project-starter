FROM --platform=linux/amd64 python:3.12 AS build

RUN apt-get update -y && \
    apt-get install -y build-essential libpq-dev && \
    apt-get install --upgrade pip setuptools wheel

WORKDIR /usr/src/app

COPY analytics .

RUN pip install -r requirements.txt

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=postgresql-service
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

EXPOSE 5153

CMD ["python", "app.py"]