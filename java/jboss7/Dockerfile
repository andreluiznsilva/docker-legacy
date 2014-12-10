# Base image OpenJDK 7 and JBoss 7

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN wget -O /tmp/jboss.tar.gz http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz &&
	tar zxf /tmp/jboss.tar.gz -C /opt &&
	mv /opt/jboss-as-7.1.1.Final /opt/jboss7 &&
	/opt/jboss7/bin/add-user.sh --silent=true admin admin*123 &&
	sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" /opt/jboss7/standalone/configuration/standalone.xml &&
	ln -s /opt/jboss7/standalone/deployments/ apps &&
	rm -rf  /tmp/*

EXPOSE 8080 9990

CMD /opt/jboss7/bin/standalone.sh -b 0.0.0.0