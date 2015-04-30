# Openldap

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
	
RUN apt-get update && apt-get install -y slapd ldap-utils ldapscripts phpldapadmin && apt-get autoremove && apt-get autoclean
	
EXPOSE 80 389

ADD init.sh /init.sh

CMD bash init.sh