# Debian with OpenJDK 7 e Tomcat 8

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget

# install
RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.15/bin/apache-tomcat-8.0.15.tar.gz
RUN tar zxf /tmp/tomcat.tar.gz -C /opt
RUN mv /opt/apache-tomcat-8.0.15 /opt/tomcat

# config
RUN echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > /opt/tomcat/conf/tomcat-users.xml
RUN export JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"

# clean
RUN rm -rf  /tmp/*

EXPOSE 8080

CMD /bin/sh -e /opt/tomcat/bin/catalina.sh run