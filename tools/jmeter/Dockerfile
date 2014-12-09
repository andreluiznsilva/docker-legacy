# Debian with jmeter

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get install -y wget unzip

# install
RUN wget -O /tmp/apache-jmeter-2.12.tgz http://mirror.nbtelecom.com.br/apache//jmeter/binaries/apache-jmeter-2.12.tgz
RUN tar -zxf /tmp/apache-jmeter-2.12.tgz -C /opt
RUN mv /opt/apache-jmeter-2.12 /opt/jmeter

# install plugins
RUN wget -O /tmp/JMeterPlugins-Standard-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-Standard-1.2.0.zip
RUN wget -O /tmp/JMeterPlugins-Extras-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-Extras-1.2.0.zip
RUN wget -O /tmp/JMeterPlugins-ExtrasLibs-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-ExtrasLibs-1.2.0.zip
RUN unzip -o /tmp/JMeterPlugins-Standard-1.2.0.zip -d /opt/jmeter
RUN unzip -o /tmp/JMeterPlugins-Extras-1.2.0.zip -d /opt/jmeter
RUN unzip -o /tmp/JMeterPlugins-ExtrasLibs-1.2.0.zip -d /opt/jmeter

# clean
RUN rm -rf  /tmp/*

EXPOSE 1099

CMD /opt/jmeter/bin/jmeter-server 