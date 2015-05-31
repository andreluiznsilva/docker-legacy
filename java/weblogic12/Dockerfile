# Weblogic 12 image

FROM java:openjdk-7u65-jdk

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ENV WEBLOGIC_USER weblogic
ENV WEBLOGIC_PASSWORD weblogic*123

ADD config.py /tmp/config.py

RUN apt-get update && apt-get install -y wget zip && apt-get autoremove && apt-get autoclean
RUN wget "https://www.dropbox.com/s/qykd8rgwbr57kv7/wls1213_dev.zip?dl=0" -O /tmp/wls1213_dev.zip && \
	unzip /tmp/wls1213_dev.zip -d /opt && \
	mv /opt/wls12130 /opt/weblogic12 && \
	export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64" && \
	env JAVA_OPTS="$JAVA_OPTS" && \
	./opt/weblogic12/configure.sh -silent && \
	./opt/weblogic12/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /tmp/config.py && \	
	mkdir -p /usr/lib/jvm/java-7-openjdk-amd64/lib && \
	mkdir -p /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security && \
	echo "username=$WEBLOGIC_USER" > /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security/boot.properties && \ 
	echo "password=$WEBLOGIC_PASSWORD" >> /opt/weblogic12/user_projects/domains/standalone/servers/AdminServer/security/boot.properties && \
	ln -s /opt/weblogic12/user_projects/domains/standalone/autodeploy autodeploy && \
	rm -rf  /tmp/*  && \
	rm -f *.log

EXPOSE 5556 8080 8443

WORKDIR /opt/weblogic12/user_projects/domains/standalone

CMD ["/opt/weblogic12/user_projects/domains/standalone/bin/startWebLogic.sh", "-Dweblogic.ProductionModeEnabled=false"]