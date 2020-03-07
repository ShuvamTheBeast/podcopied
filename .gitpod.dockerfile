FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN apt-get install wget tor openssl -y

RUN apt-get install crunch -y
RUN git clone https://github.com/thelinuxchoice/instashell  root/TEST

USER root
