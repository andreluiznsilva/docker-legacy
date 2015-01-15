# Base image with OpenJDK 7

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y openjdk-7-jre-headless && apt-get autoremove && apt-get autoclean
RUN env JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-amd64"

CMD java -version