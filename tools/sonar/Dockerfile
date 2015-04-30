# Sonar

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y procps wget zip && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/sonarqube-4.5.1.zip http://dist.sonar.codehaus.org/sonarqube-4.5.1.zip && \
	unzip /tmp/sonarqube-4.5.1.zip -d /opt && \
	mv /opt/sonarqube-4.5.1 /opt/sonar && \
	rm -rf  /tmp/*

EXPOSE 9000 9092

CMD ./opt/sonar/bin/linux-x86-64/sonar.sh console