# Wildfly 7 image

FROM java:openjdk-7u65-jdk

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y wget openjdk-7-jre-headless && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/wildfly.tar.gz http://download.jboss.org/wildfly/8.2.0.Final/wildfly-8.2.0.Final.tar.gz && \
	tar zxf /tmp/wildfly.tar.gz -C /opt && \
	mv /opt/wildfly-8.2.0.Final /opt/wildfly8 && \
	/opt/wildfly8/bin/add-user.sh --silent=true admin admin*123 && \
	sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" /opt/wildfly8/standalone/configuration/standalone.xml && \
	ln -s /opt/wildfly8/standalone/deployments/ autodeploy && \
	rm -rf  /tmp/*

EXPOSE 8080 9990

CMD /opt/wildfly8/bin/standalone.sh -b 0.0.0.0