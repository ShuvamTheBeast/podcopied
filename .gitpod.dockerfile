FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:thefanclub/grive-tools
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install grive-tools
RUN apt-get install google-drive-ocamlfuse
RUN apt-get install software-properties-common
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN apt-get install wget fuse tor rclone curl openssl -y
RUN apt-get install crunch -y

USER root
