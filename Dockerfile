FROM python:3.6

RUN apt-get update && apt-get install -y wget

EXPOSE 8000

RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ADD . /app/

CMD ./start.sh