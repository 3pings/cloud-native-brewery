FROM python:3.8

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt

EXPOSE 80

RUN chmod 744 ./startup.sh

ENTRYPOINT ["./startup.sh"]