# Base image Jenkins

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add - && \
	sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' && \
	apt-get update && apt-get install -y jenkins && apt-get autoremove && apt-get autoclean

EXPOSE 8080

CMD ./opt/sonar/bin/linux-x86-64/sonar.sh console