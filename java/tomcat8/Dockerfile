# Base image OpenJDK 7 and Tomcat 8

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN wget -O /tmp/tomcat.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.21/bin/apache-tomcat-8.0.21.tar.gz && \
	tar zxf /tmp/tomcat.tar.gz -C /opt && \
	mv /opt/apache-tomcat-8.0.21 /opt/tomcat8 && \
	echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > /opt/tomcat8/conf/tomcat-users.xml && \
	sed -i '/<\/Realm>/a <Host name="localhost2" appBase="/apps" unpackWARs="true" autoDeploy="true"/>' /opt/tomcat8/conf/server.xml && \
	env JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom" && \
	rm -rf  /tmp/*

EXPOSE 8080

CMD /bin/sh -e /opt/tomcat8/bin/catalina.sh run