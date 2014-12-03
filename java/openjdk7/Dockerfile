# Debian with OpenJDK 7

FROM debian:jessie

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget

# install
RUN apt-get -y install openjdk-7-jre-headless

CMD java -version
