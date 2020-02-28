FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN sudo apt-get remove docker docker-engine docker.io
RUN sudo apt install docker.io -y
RUN sudo service docker start
USER ROOT
