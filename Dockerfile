FROM python:latest

RUN apt-get update
RUN apt-get install git

RUN git clone https://github.com/gfek/Lepus.git
RUN pip install -r Lepus/requirements.txt

ENTRYPOINT [ "/bin/bash" ]