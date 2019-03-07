FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update -y
RUN apt-get install apt-utils -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ansible/ansible-2.6 -y
RUN apt-get update -y
RUN apt-get install ansible -y

CMD ["/bin/bash"]