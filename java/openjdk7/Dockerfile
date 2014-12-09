# Debian with OpenJDK 7

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get install -y wget unzip

# install
RUN apt-get install -y openjdk-7-jre-headless

CMD java -version
