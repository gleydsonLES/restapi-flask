FROM ubuntu:20.04

EXPOSE 5000

WORKDIR /app

RUN apt-get update && apt-get install -y python3-pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY wsgi.py .
COPY config.py .
COPY application application

CMD ["python3", "wsgi.py"]

