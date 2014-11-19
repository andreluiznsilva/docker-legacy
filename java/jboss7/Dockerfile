# Debian with OpenJDK 7 and JBoss 7

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget

# install
RUN wget -O /tmp/jboss.tar.gz http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz
RUN tar zxf /tmp/jboss.tar.gz -C /opt
RUN mv /opt/jboss-as-7.1.1.Final /opt/jboss

# config
RUN /opt/jboss/bin/add-user.sh --silent=true admin admin*123
RUN sed -i "s#.*inet-address.*#\t<any-ipv4-address/>#g" /opt/jboss/standalone/configuration/standalone.xml

# clean
RUN rm -rf  /tmp/*

EXPOSE 8080 9990

CMD /opt/jboss/bin/standalone.sh -b 0.0.0.0