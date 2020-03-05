FROM kalilinux/kali
USER ROOT
RUN  echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list 
RUN apt-get update
RUN apt-get dist-upgrade -y
USER gitpod
