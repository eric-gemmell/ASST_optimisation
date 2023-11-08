FROM python:3.10

RUN apt-get update

USER root

RUN apt-get install -y gcc
RUN apt-get install -y vim tree curl

RUN apt-get install -y ncbi-blast+
RUN apt-get install -y hmmer

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /documents/eric

CMD jupyter notebook --allow-root --ip=0.0.0.0