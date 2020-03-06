FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN git clone git://github.com/fsquillace/junest ~/.junest
RUN export PATH=~/.junest/bin:$PATH

USER gitpod
