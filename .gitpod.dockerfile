FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y gpgv2 autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libyaml-dev locate ncurses-dev openssl postgresql postgresql-contrib wget xsel zlib1g zlib1g-dev
RUN su postgres
RUN createuser msfuser -S -R -P
RUN createdb msfdb -O msfuser
RUN exit
RUN update-rc.d postgresql enable
RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN source ~/.rvm/scripts/rvm
RUN git clone https://github.com/rapid7/metasploit-framework.git
RUN cd metasploit-framework/
RUN rvm --install .ruby-version
RUN gem install bundler
RUN bundle install
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER ROOT
