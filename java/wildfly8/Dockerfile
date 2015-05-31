# Wildfly 8 image

FROM jboss/wildfly:8.2.0.Final

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV WILDFLY_USER wildfly
ENV WILDFLY_PASSWORD wildfly*123

RUN /opt/jboss/wildfly/bin/add-user.sh --silent=true $WILDFLY_USER $WILDFLY_PASSWORD && \
	env JAVA_OPTS="$JAVA_OPTS"

EXPOSE 8080 9990

WORKDIR /opt/jboss/wildfly

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]