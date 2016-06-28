# Tomcat 7 image

FROM tomcat:7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV TOMCAT_USER="tomcat"
ENV TOMCAT_PASSWORD="tomcat"
ENV TOMCAT_RESOURCES=""
ENV TOMCAT_LIBS=""

EXPOSE 8080 8443

RUN keytool -genkey -noprompt -alias tomcat -dname "CN=localhost, OU=ID, O=docker, L=Hursley, S=Hants, C=GB" -keyalg RSA -keystore /root/.keystore -storepass changeit -keypass changeit

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["catalina.sh", "run"]
