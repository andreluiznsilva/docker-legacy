# Base image OpenJDK 7 and Tomcat 7

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz && \
	tar zxf /tmp/tomcat.tar.gz -C /opt && \
	mv /opt/apache-tomcat-7.0.59 /opt/tomcat7 && \
	echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > /opt/tomcat7/conf/tomcat-users.xml && \
	env JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom" && \
	ln -s /opt/tomcat7/webapps/ apps && \
	rm -rf  /tmp/*

EXPOSE 8080

CMD /bin/sh -e /opt/tomcat7/bin/catalina.sh run