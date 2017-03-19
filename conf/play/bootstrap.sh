#!/usr/bin/env bash

add-apt-repository ppa:webupd8team/java

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

echo "Retrieved sbt source"

apt-get update

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

echo "Accepted oracle license"

apt-get install -y oracle-java8-installer

apt-get install -y scala

apt-get install -y sbt

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

apt-get install -y nodejs
