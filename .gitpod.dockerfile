FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN apt-get install wget tor rclone curl openssl -y
RUN apt-get purge openjdk-\* icedtea-\* icedtea6-\* 
RUN apt-get install crunch -y

USER root
