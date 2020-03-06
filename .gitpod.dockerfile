FROM kalilinux/kali-rolling
USER root 
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install git
USER gitpod
