# Tomcat 8 image

FROM tomcat:8

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV TOMCAT_USER="tomcat"
ENV TOMCAT_PASSWORD="tomcat*123"
ENV TOMCAT_RESOURCES=""
ENV TOMCAT_LIBS=""

EXPOSE 8080

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["catalina.sh", "run"]