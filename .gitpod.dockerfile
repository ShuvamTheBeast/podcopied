FROM kalilinux/kali-linux-docker
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
USER ROOT
