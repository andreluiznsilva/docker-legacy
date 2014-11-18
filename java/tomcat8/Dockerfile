# Debian with OpenJDK 7

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update
RUN apt-get -y install wget

RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.15/bin/apache-tomcat-8.0.15.tar.gz
RUN cd /opt
RUN tar zxf /tmp/tomcat.tar.gz
RUN mv /opt/apache-tomcat* /opt/tomcat

RUN rm -rf  /tmp/*

CMD ./opt/tomcat/bin/startup.sh