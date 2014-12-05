# Debian with OpenJDK 7

FROM debian:jessie

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get install -y wget unzip

# install
RUN apt-get install -y openjdk-7-jre-headless

CMD java -version
