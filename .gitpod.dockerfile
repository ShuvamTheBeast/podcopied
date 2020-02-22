FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y neofetch wget curl fish 
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN apt-get update
RUN sudo apt-get install -y openssh-server
RUN sudo service ssh start
RUN sudo useradd BEASTBOY -p admin
RUN curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
RUN chmod +x kalinethunter
RUN ./kalinethuntet
RUN startkali
USER root
