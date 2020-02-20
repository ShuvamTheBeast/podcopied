FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y neofetch wget curl fish 
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN git clone https://github.com/x0rzavi/gitpod_template_repo
RUN cd gitpod_template_repo
RUN chmod +x env_setup.sh
RUN ./env_setup.sh
USER root
