FROM python:latest

RUN apt-get update
RUN apt-get install git

RUN git clone https://github.com/gfek/Lepus.git
RUN pip install -r Lepus/requirements.txt

RUN apt-get install nmap -y
RUN apt-get install whois -y
RUN apt-get install nano -y
RUN apt-get install telnet -y

ENTRYPOINT [ "/bin/bash" ]