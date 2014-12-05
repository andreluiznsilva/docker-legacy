# Debian with OpenJDK 7 and Wildfly 8

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get install -y wget unzip

# install
RUN wget -O /tmp/wildfly.tar.gz http://download.jboss.org/wildfly/8.1.0.Final/wildfly-8.1.0.Final.tar.gz
RUN tar zxf /tmp/wildfly.tar.gz -C /opt
RUN mv /opt/wildfly-8.1.0.Final /opt/wildfly8

# config
RUN /opt/wildfly8/bin/add-user.sh --silent=true admin admin*123
RUN sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" /opt/wildfly8/standalone/configuration/standalone.xml
RUN ln -s /opt/wildfly8/standalone/deployments/ apps

# clean
RUN rm -rf  /tmp/*

EXPOSE 8080 9990

CMD /opt/wildfly8/bin/standalone.sh -b 0.0.0.0
