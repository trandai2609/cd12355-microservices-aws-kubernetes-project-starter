FROM python:3.8

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
