# Jenkins latest image

FROM jenkins:latest

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

USER root

COPY plugins.txt plugins.txt
RUN /usr/local/bin/plugins.sh plugins.txt

RUN mkdir config/maven
RUN echo "<?xml version=\"1.0\" encoding=\"utf-8\"?><tomcat-users><role rolename=\"manager-gui\"/><user username=\"$TOMCAT_USER\" password=\"$TOMCAT_PASSWORD\" roles=\"manager-gui\"/></tomcat-users>" > config/maven/settings.xml