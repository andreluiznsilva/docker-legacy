# Base image Drone.io

FROM ubuntu:14.10

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

# init
RUN apt-get update && apt-get install -y wget libsqlite3-dev docker.io

# install
RUN wget -O /tmp/drone.deb downloads.drone.io/master/drone.deb
RUN env DRONE_SERVER_PORT=":443"
RUN env DRONE_REGISTRATION_OPEN=true
RUN dpkg -i /tmp/drone.deb

# clean
RUN rm -rf  /tmp/*

EXPOSE 80 8080

CMD /usr/local/bin/droned --config=/etc/drone/drone.toml > /var/log/drone.log



