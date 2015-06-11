# Tomcat 8 image

FROM tomcat:8

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV TOMCAT_USER="tomcat"
ENV TOMCAT_PASSWORD"tomcat*123"
ENV TOMCAT_RESOURCES=""
ENV TOMCAT_LIBS=""

RUN echo '<?xml version="1.0" encoding="utf-8"?><tomcat-users><role rolename="manager-gui"/><user username="tomcat" password="tomcat*123" roles="manager-gui"/></tomcat-users>' > conf/tomcat-users.xml && \
	sed -i "s#.*<Context>.*#\t<Context>\n$TOMCAT_RESOURCES#g" conf/context.xml && \
	if [ "$LIBS" ]; then wget -P lib $TOMCAT_LIBS; fi  && \
	env JAVA_OPTS="$JAVA_OPTS"

EXPOSE 8080

CMD ["catalina.sh", "run"]