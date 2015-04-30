# Weblogic 12

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ADD config.py /tmp/config.py

RUN apt-get update && apt-get install -y wget zip openjdk-7-jre-headless && apt-get autoremove && apt-get autoclean
RUN wget "https://www.dropbox.com/s/qykd8rgwbr57kv7/wls1213_dev.zip?dl=0" -O /tmp/wls1213_dev.zip && \
	unzip /tmp/wls1213_dev.zip -d /opt && \
	mv /opt/wls12130 /opt/weblogic12 && \
	export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64" && \
	./opt/weblogic12/configure.sh -silent && \
	./opt/weblogic12/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /tmp/config.py && \	
	mkdir -p /usr/lib/jvm/java-7-openjdk-amd64/lib && \
	mkdir -p /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security && \
	echo "username=weblogic" > /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security/boot.properties && \ 
	echo "password=weblogic*123" >> /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security/boot.properties && \
	ln -s /opt/weblogic12/user_projects/domains/standalone/autodeploy autodeploy && \
	rm -rf  /tmp/*  && \
	rm -f *.log

EXPOSE 5556 8080 8443

CMD /opt/weblogic12/user_projects/domains/standalone/bin/startWebLogic.sh -Dweblogic.ProductionModeEnabled=false