# Jenkins latest image

FROM jenkins:latest

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

USER root

COPY plugins.txt plugins.txt
RUN /usr/local/bin/plugins.sh plugins.txt