FROM ubuntu:rolling
USER root
RUN  echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" |  tee -a /etc/apt/sources.list 
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install git
USER gitpod
