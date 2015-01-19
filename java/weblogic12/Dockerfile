# Base image OpenJDK 7 and weblogic 12

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ADD cookies.txt /tmp/cookies.txt
ADD config.py /tmp/config.py

RUN wget "https://www.dropbox.com/s/qykd8rgwbr57kv7/wls1213_dev.zip?dl=0" -O /tmp/wls1213_dev.zip
RUN env JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-amd64/jre"
RUN	unzip /tmp/wls1213_dev.zip -d /opt && \
	mv /opt/wls12130 /opt/weblogic12 && \
	./opt/weblogic12/configure.sh -silent && \
	./opt/weblogic12/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /tmp/config.py && \
	ln -s /opt/weblogic12/user_projects/domains/base_domain/autodeploy apps && \
	mkdir -p /u01/oracle/weblogic/user_projects/domains/base_domain/servers/AdminServer/security && \
	echo "username=weblogic" > /opt/weblogic12/user_projects/domains/base_domain/servers/AdminServer/security/boot.properties && \ 
    echo "password=admin*123" >> /opt/weblogic12/user_projects/domains/base_domain/servers/AdminServer/security/boot.properties && \
    rm -rf  /tmp/*

EXPOSE 5556 7001 7002

CMD /opt/weblogic12/user_projects/domains/base_domain/bin/startWebLogic.sh