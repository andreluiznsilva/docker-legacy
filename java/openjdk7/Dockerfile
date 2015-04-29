# Base image with OpenJDK 7

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y openjdk-7-jre-headless wget unzip && apt-get autoremove && apt-get autoclean

CMD java -version