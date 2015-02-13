# Base image Openldap

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  	apt-get -y install slapd ldap-utils ldapscripts phpldapadmin && \
	rm -rf /var/lib/apt/lists/*
	
EXPOSE 80 389

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["slapd", "-h", "ldap:/// ldapi:///", "-u", "openldap", "-g", "openldap", "-F", "/etc/ldap/slapd.d", "-d", "0"]