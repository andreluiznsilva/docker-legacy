# Jenkins latest image

FROM jenkins:latest

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

USER root

EXPOSE 8080 50000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
