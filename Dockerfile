FROM yoihito/ruby
MAINTAINER yoihito 


RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN add-apt-repository ppa:chris-lea/node.js
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties


RUN gem install rails -V -N
RUN rbenv rehash

EXPOSE 3000




