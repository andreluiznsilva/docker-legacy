# Tomcat 7

FROM tomcat:7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

RUN echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > /opt/tomcat7/conf/tomcat-users.xml && \
	env JAVA_OPTS="$JAVA_OPTS" && \
	ln -s /opt/tomcat7/webapps/ autodeploy && \
	rm -rf  /tmp/*

EXPOSE 8080 8000

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]