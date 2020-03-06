FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN apt-get install wget -y
RUN wget https://github.com/fsquillace/junest/archive/6.0.8.tar.gz 
RUN tar xvf 6.0.8.tar.gz
RUN mv junest-6.0.8 junest
RUN echo "PATH=~/junest/bin:\$PATH" >> ~/.bashrc 
RUN junest -f
RUN exit
USER gitpod
