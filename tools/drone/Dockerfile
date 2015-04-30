# Drone.io

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && apt-get install -y wget libsqlite3-dev docker.io && apt-get autoremove && apt-get autoclean
RUN wget -O /tmp/drone.deb downloads.drone.io/master/drone.deb
RUN env DRONE_SERVER_PORT=":443"
RUN env DRONE_REGISTRATION_OPEN=true
RUN dpkg -i /tmp/drone.deb
RUN rm -rf  /tmp/*

EXPOSE 80 8080

CMD /usr/local/bin/droned --config=/etc/drone/drone.toml > /var/log/drone.log



