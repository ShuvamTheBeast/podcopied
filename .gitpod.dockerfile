FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y wget proot -y && hash -r && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Parrot/parrot.sh && bash parrot.sh
RUN ./start-parrot.sh
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN apt-get update
RUN sudo apt-get install -y openssh-server
RUN sudo service ssh start
RUN sudo useradd BEASTBOY -p admin
USER ROOT
