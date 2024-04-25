FROM python:latest

RUN apt-get update
RUN apt-get install git

RUN git clone https://github.com/gfek/Lepus.git
RUN pip install -r Lepus/requirements.txt

RUN apt-get install nmap -y
RUN apt-get install whois -y
RUN apt-get install nano -y
RUN apt-get install telnet -y
RUN apt-get install curl -y

RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > /bin/msfinstall && chmod 755 /bin/msfinstall && /bin/msfinstall

ENTRYPOINT [ "/bin/bash" ]
