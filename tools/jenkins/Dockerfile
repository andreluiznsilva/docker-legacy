# Debian with Jenkins

FROM library/jenkins:latest

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget procps unzip 

# install
RUN apt-get -y install docker.io

# clean
RUN rm -rf  /tmp/*

EXPOSE 8080