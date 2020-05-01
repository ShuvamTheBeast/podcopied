FROM ubuntu:latest

USER root

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install git wget python git zip unzip openjdk-8-jdk python3-pip autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libffi-dev -y 
RUN pip3 install  --upgrade cython virtualenv
USER root
