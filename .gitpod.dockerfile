FROM debian
USER root
RUN apt-get -y update && \
    apt-get -y install zip build-essential autoconf bison python vim git && \
    apt-get clean
WORKDIR /opt
curl https://www.swag.uwaterloo.ca/bash2py/downloads/3.6/bash2py-3.6.zip /opt
RUN unzip /opt/bash2py-3.6.zip 
WORKDIR /opt/bash2py-3.6
COPY test.py /opt/bash2py-3.6
RUN mkdir /root/bin
RUN sh install
CMD /bin/bash

USER root
