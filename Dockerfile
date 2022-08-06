FROM python:3.10-slim as BUILD

RUN apt-get update && apt-get install -y --no-install-recommends build-essential

COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt

COPY . .
