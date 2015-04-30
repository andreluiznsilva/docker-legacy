# Tomcat 8

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y wget openjdk-7-jre-headless && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.20/bin/apache-tomcat-8.0.20.tar.gz && \
	tar zxf /tmp/tomcat.tar.gz -C /opt && \
	mv /opt/apache-tomcat-8.0.20 /opt/tomcat8 && \
	echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > /opt/tomcat8/conf/tomcat-users.xml && \
	env JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom" && \
	ln -s /opt/tomcat8/webapps/ autodeploy && \
	rm -rf  /tmp/*

EXPOSE 8080

CMD /bin/sh -e /opt/tomcat8/bin/catalina.sh run