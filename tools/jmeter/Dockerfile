# Base image jmeter

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y libnet-ifconfig-wrapper-perl && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/apache-jmeter-2.12.tgz http://mirror.nbtelecom.com.br/apache//jmeter/binaries/apache-jmeter-2.12.tgz && \
	tar -zxf /tmp/apache-jmeter-2.12.tgz -C /opt && \
	mv /opt/apache-jmeter-2.12 /opt/jmeter && \
	wget -O /tmp/JMeterPlugins-Standard-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-Standard-1.2.0.zip && \
	wget -O /tmp/JMeterPlugins-Extras-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-Extras-1.2.0.zip && \
	wget -O /tmp/JMeterPlugins-ExtrasLibs-1.2.0.zip http://jmeter-plugins.org/files/JMeterPlugins-ExtrasLibs-1.2.0.zip && \
	unzip -o /tmp/JMeterPlugins-Standard-1.2.0.zip -d /opt/jmeter && \
	unzip -o /tmp/JMeterPlugins-Extras-1.2.0.zip -d /opt/jmeter && \
	unzip -o /tmp/JMeterPlugins-ExtrasLibs-1.2.0.zip -d /opt/jmeter && \
	rm -rf  /tmp/*

EXPOSE 1099

CMD export JMETER_IP="$(/sbin/ifconfig | grep "inet addr:" | awk -F: '{print $2}' | awk '{print $1}' | awk 'FNR == 1 {print}')" && \
	/opt/jmeter/bin/jmeter-server -Dserver.rmi.localport=1099 -Djava.rmi.server.hostname=$JMETER_IP