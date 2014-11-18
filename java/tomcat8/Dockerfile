# Debian with OpenJDK 7 e Tomcat 8

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get -y install wget

RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.15/bin/apache-tomcat-8.0.15.tar.gz
RUN tar zxf /tmp/tomcat.tar.gz -C /opt
RUN rm -rf  /tmp/*
RUN mv /opt/apache-tomcat-8.0.15 /opt/tomcat

CMD ["./opt/tomcat/bin/startup.sh","tailf -n 100 /opt/tomcat/logs/catalina.out"]