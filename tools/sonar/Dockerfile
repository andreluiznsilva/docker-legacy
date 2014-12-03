# Debian with Sonar

FROM andreluiznsilva/java:openjdk7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get -y install wget procps unzip

# install
RUN wget -O /tmp/sonarqube-4.5.1.zip http://dist.sonar.codehaus.org/sonarqube-4.5.1.zip
RUN unzip /tmp/sonarqube-4.5.1.zip -d /opt
RUN mv /opt/sonarqube-4.5.1 /opt/sonar

# clean
RUN rm -rf  /tmp/*

EXPOSE 9000 9092

CMD ./opt/sonar/bin/linux-x86-64/sonar.sh console



