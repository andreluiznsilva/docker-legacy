# Debian with OpenJDK 7 and Wildfly 8

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget

# install
RUN wget -O /tmp/wildfly.tar.gz http://download.jboss.org/wildfly/8.1.0.Final/wildfly-8.1.0.Final.tar.gz
RUN tar zxf /tmp/wildfly.tar.gz -C /opt
RUN mv /opt/wildfly-8.1.0.Final /opt/wildfly

# config
RUN /opt/wildfly/bin/add-user.sh --silent=true admin admin*123
RUN sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" /opt/wildfly/standalone/configuration/standalone.xml

# clean
RUN rm -rf  /tmp/*

EXPOSE 8080 9990

CMD /opt/wildfly/bin/standalone.sh -b 0.0.0.0