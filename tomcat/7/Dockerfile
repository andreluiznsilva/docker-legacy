# Tomcat 7 image

FROM tomcat:7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV RESOURCES=""
ENV LIBS=""

RUN echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="admin" password="admin*123" roles="manager-gui"/></tomcat-users>' > conf/tomcat-users.xml && \
	sed -i "s#.*<Context>.*#\t<Context>\n$RESOURCES#g" conf/context.xml && \
	cd lib && curl -L $LIBS && \
	env JAVA_OPTS="$JAVA_OPTS"

EXPOSE 8080

CMD ["catalina.sh", "run"]