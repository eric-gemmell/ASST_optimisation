FROM python:3.9

RUN apt-get update

USER root

RUN apt-get install -y gcc
RUN apt-get install -y vim tree curl

RUN apt-get install -y ncbi-blast+
RUN apt-get install -y hmmer
RUN apt-get install -y iqtree

COPY requirements.txt .
RUN pip3 install -r requirements.txt

VOLUME /files
WORKDIR /files

CMD jupyter notebook --allow-root --ip=0.0.0.0
