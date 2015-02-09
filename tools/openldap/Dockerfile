# Base image Openldap

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get install -q -y slapd ldap-utils phpldapadmin && \
	dpkg-reconfigure slapd << EOF no test.com example admin admin 2 no yes no EOF && \
	rm -rf  /tmp/*

EXPOSE 80 389

CMD ./etc/init.d/slapd start && \
	source /etc/apache2/envvars && \
	exec apache2 -D FOREGROUND