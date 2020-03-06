FROM ubuntu:rolling
USER root 
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y
RUN apt-get install git -y
RUN apt-get install wget tor openssl -y

RUN apt-get install crunch -y
RUN git clone https://github.com/thelinuxchoice/instashell  ~/gitpod/podcopied
RUN chmod +x ~/gitpod/podcopied/instashell/instashell.sh && chmod +x ~/gitpod/podcopied/instashell/install.sh
RUN su ~/gitpod/podcopied/./install.sh
USER gitpod
