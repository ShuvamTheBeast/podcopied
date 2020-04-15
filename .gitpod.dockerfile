FROM ubuntu:latest

USER root

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install git wget python -y

RUN echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/yandex-disk.list > /dev/null && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | sudo apt-key add - && sudo apt-get update && sudo apt-get install -y yandex-disk
RUN git clone https://github.com/r0oth3x49/udemy-dl.git
WORKDIR udemy-dl
RUN pip install -r requirements.txt
USER root
