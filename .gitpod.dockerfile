FROM ubuntu:rolling
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y neofetch fish wget curl 
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER gitpod
USER root
