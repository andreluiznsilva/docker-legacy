# Jenkins latest image

FROM jenkins:latest

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JENKINS_PLUGINS="job-dsl delivery-pipeline-plugin"

COPY plugins.txt /usr/share/jenkins/ref/

RUN /usr/local/bin/plugins.sh $JENKINS_PLUGINS
