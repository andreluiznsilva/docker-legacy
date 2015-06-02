# Wildfly 8 image

FROM jboss/wildfly:8.2.0.Final

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV WILDFLY_USER wildfly
ENV WILDFLY_PASSWORD wildfly*123

RUN env JAVA_OPTS="$JAVA_OPTS" && \
	$JBOSS_HOME/bin/add-user.sh --silent=true $WILDFLY_USER $WILDFLY_PASSWORD && \	
	sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" $JBOSS_HOME/standalone/configuration/standalone.xml && \
	sed -i 's/scan-interval="5000"/scan-interval="1000" auto-deploy-exploded="true"/g' $JBOSS_HOME/standalone/configuration/standalone.xml

EXPOSE 8080 9990

WORKDIR /opt/jboss/wildfly

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]