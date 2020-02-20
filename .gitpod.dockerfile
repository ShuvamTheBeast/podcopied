FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y neofetch wget curl fish 
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN git clone https://github.com/x0rzavi/gitpod_template_repo
RUN chmod a+x gitpod_template_repo/env_setup.sh
RUN gitpod_template_repo/env_setup.sh
USER root
