# Jmeter 2.12 image

FROM java:openjdk-7u65-jdk

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JMETER_RMI_HOSTNAME 127.0.0.1
ENV JMETER_RMI_PORT 65501
ENV JMETER_SERVER_PORT 65501

ENV JMETER_VERSION 2.12
ENV JMETER_PLUGINS_VERSION 1.2.0

RUN apt-get update && apt-get install -y wget libnet-ifconfig-wrapper-perl && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/apache-jmeter-$JMETER_VERSION.tgz http://mirror.nbtelecom.com.br/apache//jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz && \
	tar -zxf /tmp/apache-jmeter-$JMETER_VERSION.tgz -C /opt && \
	mv /opt/apache-jmeter-$JMETER_VERSION /opt/jmeter && \
	wget -O /tmp/JMeterPlugins-Standard-$JMETER_PLUGINS_VERSION.zip http://jmeter-plugins.org/files/JMeterPlugins-Standard-$JMETER_PLUGINS_VERSION.zip && \
	wget -O /tmp/JMeterPlugins-Extras-$JMETER_PLUGINS_VERSION.zip http://jmeter-plugins.org/files/JMeterPlugins-Extras-$JMETER_PLUGINS_VERSION.zip && \
	wget -O /tmp/JMeterPlugins-ExtrasLibs-$JMETER_PLUGINS_VERSION.zip http://jmeter-plugins.org/files/JMeterPlugins-ExtrasLibs-$JMETER_PLUGINS_VERSION.zip && \
	unzip -o /tmp/JMeterPlugins-Standard-$JMETER_PLUGINS_VERSION.zip -d /opt/jmeter && \
	unzip -o /tmp/JMeterPlugins-Extras-$JMETER_PLUGINS_VERSION.zip -d /opt/jmeter && \
	unzip -o /tmp/JMeterPlugins-ExtrasLibs-$JMETER_PLUGINS_VERSION.zip -d /opt/jmeter && \
	rm -rf  /tmp/*

EXPOSE 65501

CMD /opt/jmeter/bin/jmeter-server -Dserver.rmi.localport=${JMETER_RMI_PORT} -Dserver_port=${JMETER_SERVER_PORT}