# Base image Openldap

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ADD init.sh /init.sh

RUN apt-get update && \
	echo "slapd slapd/internal/generated_adminpw string admin" | debconf-set-selections && \
	echo "slapd slapd/password2 string admin" | debconf-set-selections && \
	echo "slapd slapd/internal/adminpw string admin" | debconf-set-selections && \
	echo "slapd slapd/password1 string admin" | debconf-set-selections && \
	echo "slapd slapd/allow_ldap_v2 boolean true" | debconf-set-selections && \
	echo "slapd shared/organization string andre" | debconf-set-selections && \
	echo "slapd slapd/domain string andre.com" | debconf-set-selections && \
	apt-get install -q -y slapd ldap-utils ldapscripts phpldapadmin && \
	dpkg-reconfigure -f noninteractive slapd
	
EXPOSE 80 389

RUN bash init.sh